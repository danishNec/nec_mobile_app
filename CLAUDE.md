# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Install dependencies
flutter pub get

# Run app (debug)
flutter run

# Build
flutter build apk        # Android
flutter build ios        # iOS

# Lint / static analysis
flutter analyze

# Tests
flutter test

# Code generation (must re-run after editing annotated classes)
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run build_runner watch  # watch mode during development
```

**Code generation is required** whenever you modify classes annotated with `@freezed`, `@injectable`, `@AutoRouterConfig`, `@ChopperApi`, or `@JsonSerializable`. Generated files have `.g.dart` / `.freezed.dart` / `.chopper.dart` suffixes — never edit them manually.

## Architecture

Clean Architecture with BLoC, organized into four layers under `lib/`:

| Layer | Path | Purpose |
|---|---|---|
| Presentation | `lib/presentation/` | Screens, widgets, routes |
| Application | `lib/application/` | BLoC state machines |
| Domain | `lib/domain/` | Facade interfaces, models, core services |
| Infrastructure | `lib/infrastructure/` | Repository implementations, API calls |

### Data flow

```
UI Widget → BLoC (event) → Facade (domain interface) → Repository (infrastructure) → Chopper API
                ↑                                                                          ↓
            BLoC (state)  ←  Either<Failure, Success>  ←────────────────────────────────┘
```

### Feature structure convention

Each feature follows this layout:
```
lib/
  application/<feature>/     # BLoC, events, state (all parts of one Freezed unit)
  domain/<feature>/          # Facade interface (I<Feature>Facade) + failure types + DTOs
  infrastructure/<feature>/  # Repository implementing the facade
  presentation/<feature>/    # Screens and feature-specific widgets
```

## BLoC / Freezed conventions

**Events and State** live as `part` files of the BLoC file — three files form one compilation unit:
- `beneficiary_bloc.dart` — `part 'beneficiary_event.dart'; part 'beneficiary_state.dart';`
- `beneficiary_event.dart` — `part of 'beneficiary_bloc.dart';`
- `beneficiary_state.dart` — `part of 'beneficiary_bloc.dart';`

**Event pattern** — each factory gets a private class name; handlers are registered in the BLoC constructor:
```dart
const factory BeneficiaryEvent.getBeneficiaries() = _GetBeneficiaries;
// → on<_GetBeneficiaries>(_onGetBeneficiariesToState) in constructor
```

**State pattern** — sealed `@freezed` class with a `BeneficiaryState.initial()` factory for reset:
```dart
@freezed
sealed class BeneficiaryState with _$BeneficiaryState {
  const factory BeneficiaryState({
    required bool isLoading,
    required Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption,
    ...
  }) = _BeneficiaryState;

  factory BeneficiaryState.initial() => BeneficiaryState(
    isLoading: false,
    beneficiaryFailureOrSuccessOption: none(),
    ...
  );
}
```

**Option\<Either\> pattern** for distinguishing event lifecycle in state:
- `none()` — no event has fired yet (prevents listener from reacting on rebuild)
- `some(left(failure))` — failure result
- `some(right(value))` — success result

BLoCs always reset the option to `none()` when the event starts, then set it to `some(...)` when done.

**Parallel API calls** inside a single BLoC handler:
```dart
final (r1, r2, r3) = await (future1, future2, future3).wait;
```

**Debouncing** text input events uses RxDart transformer on the `on<>` call — see beneficiary route code for reference.

## Extension method import gotcha

Freezed-generated `maybeMap`, `map`, `when` etc. on sealed union types (like failure classes) are compiled as **extension methods** in the `.freezed.dart` file. Extension methods are **not available through transitive imports** — the file declaring the type must be **directly imported** in any file that calls `.maybeMap(...)`.

```dart
// beneficiary_page.dart MUST have this — transitive import is not enough:
import '../../domain/beneficiary/beneficiary_failure.dart';
```

## Theme & Colors

**Single active theme**: dark mode only (`AppTheme.custom`). Light theme exists but is unused.

**Color access** — always use semantic tokens, never hardcode:
```dart
context.appColors.success       // AppSemanticColors extension
context.appColors.errorDark
context.appColors.muted
context.colorScheme.primary     // brand black
context.colorScheme.tertiary    // brand yellow (CTA / accent)
context.colorScheme.scrim       // use for barrier/overlay backgrounds (NOT onSurface)
context.appGradient             // AppGradient — null on light theme, check before use
context.typography              // AppTypographyTokens for semantic text styles
```

**Available semantic tokens** on `context.appColors` (`AppSemanticColors`):
`success`, `onSuccess`, `successDark`, `successSubtle`, `warning`, `onWarning`, `warningSubtle`, `info`, `onInfo`, `infoSubtle`, `error`, `onError`, `errorDark`, `errorSubtle`, `statusInitiated`, `statusPending`, `statusProcessing`, `statusFailed`, `statusUnknown`, `muted`, `border`, `shadow`, `onAccent`

**Barrier / overlay colors**: always use `colorScheme.scrim`, never `colorScheme.onSurface`.

## Notifications & Dialogs

The unified notification API lives in `lib/presentation/core/notify/app_notify.dart`:

```dart
// Context-free dialog (uses global navigator key internally)
AppNotify.dialog(message: 'Error occurred', type: AppDialogType.error);

// Animated overlay toast
AppNotify.toast('Saved!');
AppNotify.toast('Failed!', type: AppToastType.error, position: AppToastPosition.top);

// Backward-compatible wrapper (context accepted but ignored)
DialogHelper.show(context, type: AppDialogType.warning, title: '...', message: '...');
```

File structure under `lib/presentation/core/`:
- `dialog/app_dialog.dart` — `AppDialogType`, `AppDialog` widget, `_IconBadge`
- `toast/app_toast.dart` — `AppToastType`, `AppToastPosition`, `AppToastManager`
- `notify/app_notify.dart` — `AppNotify`, `DialogHelper`; re-exports dialog and toast types

Import `app_notify.dart` to get all three in one import.

## Routing & Context-free Navigation

`AppRouter` is registered as a singleton in `getIt` after DI init. Use it anywhere context is unavailable:

```dart
getIt<AppRouter>().navigatorKey.currentState   // NavigatorState
getIt<AppRouter>().navigatorKey.currentContext  // BuildContext (may be null)
```

Route declarations use `@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')` — class `BeneficiaryPage` → route `BeneficiaryRoute`. All routes default to Cupertino transitions.

## HTTP & API

Single Chopper service at `lib/domain/core/services/api_services.dart`. All endpoints are defined there.

**AuthHttpClient** (custom interceptor) handles:
- Token injection: `Authorization: Bearer <token>` from `SharedPreferences`
- Skip-auth header: `x-skip-auth: true` on any method to bypass token injection
- 401 handling: single token refresh attempt, retry original request; failure → forced logout via `AppSessionNotifier`
- Network retry dialog: shown on 5xx / timeout errors (non-JSON responses)

## Dependency Injection

`@injectable` / `@singleton` / `@lazySingleton` on classes; `@module` + `@preResolve` for async providers (SharedPreferences). After any annotation change, run `build_runner`.

Key singletons accessible via `getIt<T>()`: `AppRouter`, `ApiServices`, `SharedPreferences`, `FlutterSecureStorage`, `ImagePicker`.

## Responsive Layout

Design baseline: **375 × 812** (iPhone 11). All sizes use `flutter_screenutil`:
- `16.w` — width-scaled (horizontal dimensions, icon sizes)
- `12.h` — height-scaled (vertical spacing)
- `8.r` — radius-scaled (border radius)
- `14.sp` — font size (text scaling enabled, multiplier 1.0)

## Localization

Translation keys live in `assets/translations/en-US.json` and `ar-OM.json`. Access with `.tr()` from `easy_localization`. When adding new UI strings, add the key to both files.

## Key files

- `lib/main.dart` — bootstrap: DI init → security checks → runApp
- `lib/presentation/core/app_widget.dart` — ScreenUtilInit, MultiBlocProvider (13 BLoCs), MaterialApp.router, session expiry listener
- `lib/presentation/core/global/app_global.dart` — global utilities (flag asset lookup, locale helpers)
- `lib/domain/core/services/api_services.dart` — all Chopper endpoints
- `lib/infrastructure/core/app_injectable/app_injectable.dart` — Chopper modules and interceptors
- `lib/domain/core/di/injection.dart` — GetIt configuration
- `assets/translations/en-US.json` — primary translation file
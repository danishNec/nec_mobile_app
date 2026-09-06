import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ekey_flutter_sdk/ekey_flutter_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/login/login_bloc.dart';
import '../../application/otp/otp_bloc.dart';
import '../../domain/common/common_selectable_dto.dart';
import '../../domain/core/failures.dart';
import '../../domain/login/login_failure.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/button/app_button.dart';
import '../core/dialog/app_language_dialog.dart';
import '../core/global/app_global.dart';
import '../core/images/app_image.dart';
import '../core/input_formatter/app_masked_digit_controller.dart';
import '../core/input_formatter/app_western_digits_input_formatter.dart';
import '../core/notify/app_notify.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/text_form_field/app_text_form_field.dart';
import '../routes/app_routes.gr.dart';
import 'widgets/login_animation.dart';

@RoutePage()
class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    useEffect(() {
      context.read<LoginBloc>().add(const LoginEvent.getIdentityTypes());
      return null;
    }, const []);

    final idTypeController = useTextEditingController();

    final idController = useMemoized(
      () => MaskedDigitController(maskLength: 0),
    );
    useEffect(() => idController.dispose, const []);

    final mobileController = useMemoized(
      () => MaskedDigitController(maskLength: 8),
    );
    useEffect(() => mobileController.dispose, const []);

    final idFocusNode = useFocusNode();
    final mobileFocusNode = useFocusNode();

    // Tracks the previously synced identity type to guard against redundant
    // resetMask calls when the listener fires for unrelated state changes.
    final prevIdTypeRef = useRef<CommonSelectableItem?>(null);

    // eKey 2.0 app-to-app login. The result arrives via the plugin's stream and
    // via recoverPendingResult() on resume (Android can kill this page while the
    // external eKey app is foreground, so the initiateLogin() Future isn't safe).
    final ekeyHandledRef = useRef<String?>(null);
    useOnAppLifecycleStateChange((_, current) {
      if (current == AppLifecycleState.resumed) {
        EkeyFlutterSdk.recoverPendingResult().then((r) {
          if (r != null && context.mounted) {
            _onEkeyResult(context, r, ekeyHandledRef);
          }
        });
      }
    });
    useEffect(() {
      EkeyFlutterSdk.recoverPendingResult().then((r) {
        if (r != null && context.mounted) {
          _onEkeyResult(context, r, ekeyHandledRef);
        }
      });
      final sub = EkeyFlutterSdk.loginResults.listen((r) {
        if (context.mounted) _onEkeyResult(context, r, ekeyHandledRef);
      }, onError: (_) {});
      return sub.cancel;
    }, const []);

    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (prev, curr) =>
          prev.selectedIdentityType != curr.selectedIdentityType ||
          prev.loginFailureOrSuccessOption !=
              curr.loginFailureOrSuccessOption ||
          prev.identityTypesFailureOrSuccessOption !=
              curr.identityTypesFailureOrSuccessOption,
      buildWhen: (prev, curr) =>
          prev.isLoading != curr.isLoading ||
          prev.isSubmitting != curr.isSubmitting ||
          prev.selectedIdentityType != curr.selectedIdentityType ||
          prev.showErrorMessages != curr.showErrorMessages ||
          prev.loginIdIdentityDto != curr.loginIdIdentityDto,
      listener: (context, state) {
        // Sync controllers only when identity type actually changes
        if (state.selectedIdentityType != prevIdTypeRef.value) {
          prevIdTypeRef.value = state.selectedIdentityType;
          idTypeController.text = state.selectedIdentityType?.titleName ?? '';
          idController.resetMask(
            AppGlobal.idMaskLength(state.selectedIdentityType?.titleCode),
          );
        }

        // Show error if identity types failed to load
        state.identityTypesFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                unableToFetchIdentityTypes: (value) => value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.unknownError'.tr(),
              ),
              type: AppToastType.info,
              position: AppToastPosition.top,
            ),
            (_) {},
          ),
        );

        // Handle OTP request result
        state.loginFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                invalidCredentials: (value) => value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.unknownError'.tr(),
              ),
              type: AppToastType.error,
              position: AppToastPosition.top,
            ),
            (_) {
              context.read<OtpBloc>().add(
                OtpEvent.initial(
                  idType: state.selectedIdentityType?.titleCode ?? '',
                  idNumber: idController.rawValue,
                  mobileNumber: mobileController.rawValue,
                ),
              );
              FocusScope.of(context).unfocus();
              context.router.push(const OtpRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        final idMaskLen = AppGlobal.idMaskLength(
          state.selectedIdentityType?.titleCode,
        );
        return AppScaffold(
          isLoading: state.isLoading || state.isSubmitting,
          onTapOutside: () => FocusScope.of(context).unfocus(),
          appBar: AppAppBar(
            centerTitle: true,
            titleWidget: Image.asset(AppImages.logo, width: 140.w),
            actions: [
              InkWell(
                onTap: () {
                  AppLanguageDialog.show(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 6.h,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        size: 20.sp,
                        color: colorScheme.onPrimary,
                      ),
                      SizedBox(width: 3.w),
                      Text(
                        context.locale.languageCode.toUpperCase(),
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.all(16.w),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                              const LoginAnimation(),
                              SizedBox(height: 35.h),
                              Text(
                                'login.title'.tr(),
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: colorScheme.onPrimary,
                                ),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                'login.subtitle'.tr(),
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: colorScheme.onSecondary,
                                ),
                              ),
                              SizedBox(height: 28.h),
                              AppTextFormField(
                                controller: idTypeController,
                                labelText: 'login.idType.label'.tr(),
                                hintText: 'login.idType.placeholder'.tr(),
                                readOnly: true,
                                showCursor: false,
                                suffixIcon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: colorScheme.tertiary,
                                ),
                                onTap: () {
                                  final list =
                                      state
                                          .loginIdIdentityDto
                                          ?.data
                                          ?.identityTypesList ??
                                      [];
                                  if (list.isEmpty) return;
                                  if (list.length == 1) {
                                    AppNotify.toast(
                                      'login.idType.error'.tr(
                                        namedArgs: {
                                          'idType':
                                              state
                                                  .selectedIdentityType
                                                  ?.titleName ??
                                              '',
                                        },
                                      ),
                                      type: AppToastType.info,
                                      position: AppToastPosition.top,
                                    );
                                    return;
                                  }
                                  context.router.push(
                                    AppSelectableRoute(
                                      title: 'login.idType.label'.tr(),
                                      initialSelectedItem:
                                          state.selectedIdentityType,
                                      commonSelectableDto: CommonSelectableDto(
                                        data: CommonSelectableData(
                                          list: list
                                              .map(
                                                (e) => CommonSelectableItem(
                                                  titleName: (e.name ?? '')
                                                      .toUpperCase(),
                                                  titleCode: e.code,
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                      onSelected: (value) =>
                                          context.read<LoginBloc>().add(
                                            LoginEvent.identityTypeChanged(
                                              selectedIdentityType: value,
                                            ),
                                          ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 10.h),
                              AppTextFormField(
                                controller: idController,
                                focusNode: idFocusNode,
                                labelText: 'login.idNumber.label'.tr(),
                                hintText: idMaskLen == 0
                                    ? 'login.idNumber.placeholder'.tr()
                                    : null,
                                enabled: idMaskLen > 0,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                autocorrect: false,
                                enableSuggestions: false,
                                inputFormatters: [
                                  WesternDigitsInputFormatter(),
                                ],
                                onChanged: (_) => context.read<LoginBloc>().add(
                                  LoginEvent.identityNumberChanged(
                                    idController.rawValue,
                                  ),
                                ),
                                onFieldSubmitted: (_) =>
                                    mobileFocusNode.requestFocus(),
                                validator: (p0) => context
                                    .read<LoginBloc>()
                                    .state
                                    .identityNumber
                                    .value
                                    .fold(
                                      (failure) => switch (failure) {
                                        InvalidIdentityNumber() =>
                                          'login.idNumber.validationError'.tr(),
                                        _ => null,
                                      },
                                      (_) => null,
                                    ),
                              ),
                              SizedBox(height: 10.h),
                              AppTextFormField(
                                controller: mobileController,
                                focusNode: mobileFocusNode,
                                labelText: 'login.mobileNumber.label'.tr(),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                autocorrect: false,
                                enableSuggestions: false,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.w,
                                    right: 12.w,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '+${AppGlobal.appCountryCode}',
                                        style: theme.textTheme.titleSmall
                                            ?.copyWith(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Container(
                                        width: 1,
                                        height: 20.h,
                                        color: colorScheme.onSurface.withValues(
                                          alpha: 0.3,
                                        ),
                                      ),
                                      SizedBox(width: 4.w),
                                    ],
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 0,
                                  minHeight: 0,
                                ),
                                inputFormatters: [
                                  WesternDigitsInputFormatter(),
                                ],
                                onChanged: (_) => context.read<LoginBloc>().add(
                                  LoginEvent.mobileNumberChanged(
                                    mobileController.rawValue,
                                  ),
                                ),
                                onFieldSubmitted: (_) => context
                                    .read<LoginBloc>()
                                    .add(const LoginEvent.requestOtpPressed()),
                                validator: (p0) => context
                                    .read<LoginBloc>()
                                    .state
                                    .mobileNumber
                                    .value
                                    .fold(
                                      (failure) => switch (failure) {
                                        InvalidMobileNumber() =>
                                          'login.mobileNumber.validationError'
                                              .tr(),
                                        _ => null,
                                      },
                                      (_) => null,
                                    ),
                              ),
                              SizedBox(height: 30.h),
                              AppButton(
                                isLoading: state.isSubmitting,
                                text: 'buttons.requestOtp'.tr(),
                                onTap: () => context.read<LoginBloc>().add(
                                  const LoginEvent.requestOtpPressed(),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              AppButton(
                                text: 'buttons.loginWithEkey'.tr(),
                                backgroundColor: Colors.transparent,
                                border: Border.all(
                                  color: colorScheme.onPrimary.withValues(
                                    alpha: 0.4,
                                  ),
                                  width: 1.5,
                                ),
                                textStyle: theme.textTheme.bodyMedium?.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onPrimary,
                                ),
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  EkeyFlutterSdk.initiateLogin();
                                },
                              ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Reacts to an eKey login outcome. Deduped so the stream and the recover call
/// don't double-fire for the same result.
void _onEkeyResult(
  BuildContext context,
  EkeyLoginResult result,
  ObjectRef<String?> handledRef,
) {
  if (!context.mounted) return;
  final key = '${result.status.name}:${result.redirectUri ?? result.error ?? ''}';
  if (handledRef.value == key) return;
  handledRef.value = key;

  switch (result.status) {
    case EkeyLoginStatus.completed:
      // TODO: send code + state from result.redirectUri to the back-end
      // token-exchange endpoint, then continue the authenticated session.
      AppNotify.toast(
        'login.ekeySuccess'.tr(),
        type: AppToastType.success,
        position: AppToastPosition.top,
      );
    case EkeyLoginStatus.failed:
    case EkeyLoginStatus.unknown:
      AppNotify.toast(
        (result.error?.isNotEmpty ?? false)
            ? result.error!
            : 'login.ekeyFailed'.tr(),
        type: AppToastType.error,
        position: AppToastPosition.top,
      );
    case EkeyLoginStatus.cancelled:
      break;
  }
}

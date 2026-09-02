import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A locale-aware [BlocBuilder] wrapper.
///
/// [BlocBuilder] is a [StatefulWidget] whose internal state only rebuilds
/// from BLoC stream events. It has no mechanism to rebuild when the app
/// locale changes, so widgets that use `.tr()` inside its builder will stay
/// stale after a language switch.
///
/// This widget solves that by being a [StatelessWidget] that:
///   1. Reads [context.locale] — registering a direct dependency on
///      [EasyLocalizationProvider] so Flutter's InheritedWidget machinery
///      marks it dirty whenever the locale changes.
///   2. Passes `ValueKey(context.locale)` to the inner [BlocBuilder].
///      When the locale changes this widget rebuilds, the key changes, Flutter
///      disposes the old [BlocBuilder] element and creates a fresh one whose
///      [State.build] is called immediately — giving all `.tr()` calls inside
///      [builder] the correct translated strings.
///
/// Usage — replace [BlocBuilder] with [LocaleBlocBuilder]:
/// ```dart
/// LocaleBlocBuilder<MyBloc, MyState>(
///   builder: (context, state) => Text('key'.tr()),
/// );
/// ```
class LocaleBlocBuilder<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const LocaleBlocBuilder({
    super.key,
    required this.builder,
    this.buildWhen,
  });

  final BlocWidgetBuilder<S> builder;
  final BlocBuilderCondition<S>? buildWhen;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      key: ValueKey(context.locale),
      buildWhen: buildWhen,
      builder: builder,
    );
  }
}

/// A locale-aware [BlocConsumer] wrapper. See [LocaleBlocBuilder] for the
/// motivation and mechanism — the same approach applies here.
///
/// Usage — replace [BlocConsumer] with [LocaleBlocConsumer]:
/// ```dart
/// LocaleBlocConsumer<MyBloc, MyState>(
///   listener: (context, state) { ... },
///   builder: (context, state) => Text('key'.tr()),
/// );
/// ```
class LocaleBlocConsumer<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const LocaleBlocConsumer({
    super.key,
    required this.listener,
    required this.builder,
    this.listenWhen,
    this.buildWhen,
  });

  final BlocWidgetListener<S> listener;
  final BlocWidgetBuilder<S> builder;
  final BlocListenerCondition<S>? listenWhen;
  final BlocBuilderCondition<S>? buildWhen;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      key: ValueKey(context.locale),
      listenWhen: listenWhen,
      buildWhen: buildWhen,
      listener: listener,
      builder: builder,
    );
  }
}
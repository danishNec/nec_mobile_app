import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/core/di/injection.dart';
import '../../routes/app_routes.dart';
import '../theme/app_theme_ext.dart';

enum AppToastType { success, error, warning, info }

enum AppToastPosition { top, bottom }

class AppToastManager {
  AppToastManager._();

  static OverlayEntry? _activeEntry;

  static void show(
    String message, {
    AppToastType type = AppToastType.success,
    AppToastPosition position = AppToastPosition.bottom,
    Duration duration = const Duration(seconds: 3),
  }) {
    final navigatorState = getIt<AppRouter>().navigatorKey.currentState;
    if (navigatorState == null) return;

    _activeEntry?.remove();
    _activeEntry = null;

    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (_) => _AppToastOverlay(
        message: message,
        type: type,
        position: position,
        duration: duration,
        onDismissed: () {
          entry.remove();
          if (_activeEntry == entry) _activeEntry = null;
        },
      ),
    );
    _activeEntry = entry;
    navigatorState.overlay?.insert(entry);
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _AppToastOverlay extends StatefulWidget {
  final String message;
  final AppToastType type;
  final AppToastPosition position;
  final Duration duration;
  final VoidCallback onDismissed;

  const _AppToastOverlay({
    required this.message,
    required this.type,
    required this.position,
    required this.duration,
    required this.onDismissed,
  });

  @override
  State<_AppToastOverlay> createState() => _AppToastOverlayState();
}

class _AppToastOverlayState extends State<_AppToastOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<double> _slide;

  bool _dismissed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 380),
      reverseDuration: const Duration(milliseconds: 260),
    );

    _opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.55, curve: Curves.easeOut),
      ),
    );

    _slide = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();
    Future.delayed(widget.duration, _dismiss);
  }

  Future<void> _dismiss() async {
    if (_dismissed || !mounted) return;
    _dismissed = true;
    await _controller.reverse();
    widget.onDismissed();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isTop = widget.position == AppToastPosition.top;
    final slideDir = isTop ? -1.0 : 1.0;
    final padding = MediaQuery.paddingOf(context);

    return Positioned(
      top: isTop ? padding.top + 12.h : null,
      bottom: !isTop ? padding.bottom + 12.h : null,
      left: 16.w,
      right: 16.w,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Transform.translate(
          offset: Offset(0, slideDir * 56.h * _slide.value),
          child: Opacity(opacity: _opacity.value, child: child),
        ),
        child: _ToastCard(
          message: widget.message,
          type: widget.type,
          onDismiss: _dismiss,
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _ToastCard extends StatelessWidget {
  final String message;
  final AppToastType type;
  final VoidCallback onDismiss;

  const _ToastCard({
    required this.message,
    required this.type,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final appColors = context.appColors;

    final (color, icon) = switch (type) {
      AppToastType.success => (
        appColors.success,
        Icons.check_circle_outline_rounded,
      ),
      AppToastType.error => (appColors.error, Icons.error_outline_rounded),
      AppToastType.warning => (appColors.warning, Icons.warning_amber_rounded),
      AppToastType.info => (appColors.info, Icons.info_outline_rounded),
    };

    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: cs.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: color.withAlpha(70), width: 1),
          boxShadow: [
            BoxShadow(
              color: appColors.shadow.withAlpha(40),
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
            BoxShadow(
              color: color.withAlpha(25),
              blurRadius: 12,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                color: color.withAlpha(28),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 20.w),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                message,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  height: 1.35,
                ),
              ),
            ),
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: onDismiss,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Icon(
                  Icons.close_rounded,
                  size: 18.w,
                  color: appColors.muted,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

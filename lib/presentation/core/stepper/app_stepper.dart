import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_theme_ext.dart';

class AppStepper extends StatefulWidget {
  final List<String> steps;
  final int currentStep;

  const AppStepper({super.key, required this.steps, required this.currentStep});

  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _pulseAnim = CurvedAnimation(
      parent: _pulseController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  double get _progress {
    if (widget.steps.length <= 1) return 0;
    return widget.currentStep / (widget.steps.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.colorScheme;
    final tt = context.appTheme.textTheme;
    final nodeSize = 30.0.w;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 48.h,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final totalWidth = constraints.maxWidth;
              final halfNode = nodeSize / 2;
              final lineWidth = totalWidth - nodeSize;

              return Stack(
                alignment: Alignment.center,
                children: [
                  // Inactive track
                  Positioned(
                    left: halfNode,
                    right: halfNode,
                    child: Container(
                      height: 2.h,
                      decoration: BoxDecoration(
                        color: cs.outline,
                        borderRadius: BorderRadius.circular(1.r),
                      ),
                    ),
                  ),
                  // Animated active track
                  Positioned(
                    left: halfNode,
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0, end: _progress),
                      duration: const Duration(milliseconds: 550),
                      curve: Curves.easeOutCubic,
                      builder: (_, value, _) => Container(
                        width: lineWidth * value,
                        height: 2.h,
                        decoration: BoxDecoration(
                          color: cs.tertiary,
                          borderRadius: BorderRadius.circular(1.r),
                        ),
                      ),
                    ),
                  ),
                  // Step nodes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      widget.steps.length,
                      (index) => _StepNode(
                        index: index,
                        isCompleted: index < widget.currentStep,
                        isActive: index == widget.currentStep,
                        pulseAnim: _pulseAnim,
                        nodeSize: nodeSize,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 8.h),
        // Step labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(widget.steps.length, (index) {
            final isActive = index == widget.currentStep;
            final isCompleted = index < widget.currentStep;
            return Flexible(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
                style: tt.labelSmall!.copyWith(
                  fontSize: 11.sp,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                  color: isActive
                      ? cs.tertiary
                      : isCompleted
                      ? cs.onSurface
                      : cs.onSurfaceVariant,
                ),
                child: Text(
                  widget.steps[index],
                  textAlign: index == 0
                      ? TextAlign.left
                      : index == widget.steps.length - 1
                      ? TextAlign.right
                      : TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

// ── Step state ─────────────────────────────────────────────────────────────────

enum _StepState { pending, active, completed }

// ── Step node ──────────────────────────────────────────────────────────────────

class _StepNode extends StatelessWidget {
  final int index;
  final bool isCompleted;
  final bool isActive;
  final Animation<double> pulseAnim;
  final double nodeSize;

  const _StepNode({
    required this.index,
    required this.isCompleted,
    required this.isActive,
    required this.pulseAnim,
    required this.nodeSize,
  });

  _StepState get _state {
    if (isCompleted) return _StepState.completed;
    if (isActive) return _StepState.active;
    return _StepState.pending;
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.colorScheme;
    final appColors = context.appColors;
    final state = _state;

    // Pulse glow only needed for active — rebuild every frame for that node only.
    return AnimatedBuilder(
      animation: pulseAnim,
      builder: (context, _) {
        final Color bg;
        final BoxBorder? border;
        final List<BoxShadow> shadows;

        switch (state) {
          case _StepState.completed:
            bg = appColors.success;
            border = null;
            shadows = const [];
          case _StepState.active:
            bg = cs.tertiary;
            border = null;
            final glowAlpha = 0.12 + 0.38 * pulseAnim.value;
            shadows = [
              BoxShadow(
                color: cs.tertiary.withValues(alpha: glowAlpha),
                blurRadius: 14.r,
                spreadRadius: 3.r,
              ),
            ];
          case _StepState.pending:
            bg = cs.secondaryContainer;
            border = Border.all(color: cs.outline, width: 1.5);
            shadows = const [];
        }

        final Widget content = switch (state) {
          _StepState.completed => Icon(
            Icons.check_rounded,
            color: appColors.onSuccess,
            size: 16.sp,
          ),
          _StepState.active || _StepState.pending => Text(
            '${index + 1}',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: state == _StepState.active
                  ? FontWeight.w700
                  : FontWeight.w500,
              color: state == _StepState.active
                  ? cs.onTertiary
                  : cs.onSurfaceVariant,
              height: 1,
            ),
          ),
        };

        return AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeOutCubic,
          width: nodeSize,
          height: nodeSize,
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(4.r),
            border: border,
            boxShadow: shadows,
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 280),
              transitionBuilder: (child, anim) => ScaleTransition(
                scale: CurvedAnimation(
                  parent: anim,
                  curve: Curves.easeOutBack,
                ),
                child: FadeTransition(opacity: anim, child: child),
              ),
              child: KeyedSubtree(key: ValueKey(state), child: content),
            ),
          ),
        );
      },
    );
  }
}
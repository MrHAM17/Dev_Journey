import 'package:flutter/material.dart';
import 'package:the_4_10_social___social_networking/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.deepPurpleA200,
                  borderRadius: BorderRadius.circular(7.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillDeepPurpleATL20 => BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillDeepPurpleATL32 => BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillDeepPurpleATL25 => BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red700,
        borderRadius: BorderRadius.circular(25.h),
      );
}

import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

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
                  borderRadius: BorderRadius.circular(8.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientDeepOrangeAToOrange => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            appTheme.deepOrangeA400,
            appTheme.orange600,
          ],
        ),
      );
  static BoxDecoration get radiusTL12 => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA20014,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get radiusTL16 => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillRedATL28 => BoxDecoration(
        color: appTheme.redA20014,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get gradientDeepOrangeAToOrangeTL40 => BoxDecoration(
        borderRadius: BorderRadius.circular(40.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 6.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            appTheme.deepOrangeA400,
            appTheme.orange600,
          ],
        ),
      );
  static BoxDecoration get gradientDeepOrangeAToOrangeTL401 => BoxDecoration(
        borderRadius: BorderRadius.circular(40.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            appTheme.deepOrangeA400,
            appTheme.orange600,
          ],
        ),
      );
  static BoxDecoration get gradientDeepPurpleAToOnError => BoxDecoration(
        borderRadius: BorderRadius.circular(40.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            appTheme.deepPurpleA400,
            theme.colorScheme.onError,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOrangeA => BoxDecoration(
        borderRadius: BorderRadius.circular(40.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.orangeA200,
          ],
        ),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
        borderRadius: BorderRadius.circular(30.h),
      );
}

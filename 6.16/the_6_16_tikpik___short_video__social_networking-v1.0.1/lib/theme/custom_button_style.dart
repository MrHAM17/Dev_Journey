import 'dart:ui';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillDeepOrange => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepOrange50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray80099,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillGrayTL6 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray600.withOpacity(0.12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL19 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL22 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer,
        side: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL16 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL19 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL22 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

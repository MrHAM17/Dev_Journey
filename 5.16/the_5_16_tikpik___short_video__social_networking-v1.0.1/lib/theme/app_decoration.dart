import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA20014,
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepOrangeAToOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [
            appTheme.deepOrangeA400,
            appTheme.orange600,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryContainerToPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.primaryContainer.withOpacity(0.6),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray1001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray1002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray1003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray600,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder100 => BorderRadius.circular(
        100.h,
      );
  static BorderRadius get circleBorder115 => BorderRadius.circular(
        115.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder56 => BorderRadius.circular(
        56.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get circleBorder80 => BorderRadius.circular(
        80.h,
      );
  static BorderRadius get circleBorder89 => BorderRadius.circular(
        89.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL16 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
        topRight: Radius.circular(16.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(8.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    
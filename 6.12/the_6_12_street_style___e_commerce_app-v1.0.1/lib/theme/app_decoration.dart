import 'package:flutter/material.dart';
import 'package:the_6_12_street_style___e_commerce_app/core/app_export.dart';

class AppDecoration {
  // Black decorations
  static BoxDecoration get black => BoxDecoration(
        color: appTheme.black90001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              18,
            ),
          ),
        ],
      );

  // Effect decorations
  static BoxDecoration get effect => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.5, 1.09),
          colors: [
            appTheme.gray300,
            appTheme.gray600,
          ],
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray30001,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen50,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray50,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );

  // Shadow decorations
  static BoxDecoration get shadow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.31, -0.04),
          end: Alignment(0.31, 0.82),
          colors: [
            appTheme.whiteA700.withOpacity(0),
            appTheme.whiteA700,
          ],
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL45 => BorderRadius.only(
        topLeft: Radius.circular(45.h),
        bottomRight: Radius.circular(25.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
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

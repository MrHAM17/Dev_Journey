import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  // Display text style
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  static get displaySmallBlack90001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get displaySmallBlack90001_1 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displaySmallGray700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  // Headline text style
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray50001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get playfairDisplay {
    return copyWith(
      fontFamily: 'Playfair Display',
    );
  }
}

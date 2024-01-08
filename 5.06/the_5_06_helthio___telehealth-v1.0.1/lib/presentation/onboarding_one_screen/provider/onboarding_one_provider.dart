import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

/// A provider class for the OnboardingOneScreen.
///
/// This provider manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
class OnboardingOneProvider extends ChangeNotifier {
  OnboardingOneModel onboardingOneModelObj = OnboardingOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}

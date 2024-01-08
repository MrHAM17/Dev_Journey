import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/onboarding_screen/models/onboarding_model.dart';/// A provider class for the OnboardingScreen.
///
/// This provider manages the state of the OnboardingScreen, including the
/// current onboardingModelObj

// ignore_for_file: must_be_immutable
class OnboardingProvider extends ChangeNotifier {OnboardingModel onboardingModelObj = OnboardingModel();

@override void dispose() { super.dispose(); } 
 }

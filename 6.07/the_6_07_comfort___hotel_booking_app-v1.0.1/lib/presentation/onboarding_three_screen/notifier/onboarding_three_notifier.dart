import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/onboarding_three_screen/models/onboarding_three_model.dart';part 'onboarding_three_state.dart';final onboardingThreeNotifier = StateNotifierProvider<OnboardingThreeNotifier, OnboardingThreeState>((ref) => OnboardingThreeNotifier(OnboardingThreeState(onboardingThreeModelObj: OnboardingThreeModel())));
/// A notifier that manages the state of a OnboardingThree according to the event that is dispatched to it.
class OnboardingThreeNotifier extends StateNotifier<OnboardingThreeState> {OnboardingThreeNotifier(OnboardingThreeState state) : super(state);

 }

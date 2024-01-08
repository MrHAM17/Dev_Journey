import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';part 'onboarding_one_state.dart';final onboardingOneNotifier = StateNotifierProvider<OnboardingOneNotifier, OnboardingOneState>((ref) => OnboardingOneNotifier(OnboardingOneState(onboardingOneModelObj: OnboardingOneModel())));
/// A notifier that manages the state of a OnboardingOne according to the event that is dispatched to it.
class OnboardingOneNotifier extends StateNotifier<OnboardingOneState> {OnboardingOneNotifier(OnboardingOneState state) : super(state);

 }

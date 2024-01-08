import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/onboarding_screen/models/onboarding_model.dart';part 'onboarding_state.dart';final onboardingNotifier = StateNotifierProvider<OnboardingNotifier, OnboardingState>((ref) => OnboardingNotifier(OnboardingState(onboardingModelObj: OnboardingModel())));
/// A notifier that manages the state of a Onboarding according to the event that is dispatched to it.
class OnboardingNotifier extends StateNotifier<OnboardingState> {OnboardingNotifier(OnboardingState state) : super(state);

 }

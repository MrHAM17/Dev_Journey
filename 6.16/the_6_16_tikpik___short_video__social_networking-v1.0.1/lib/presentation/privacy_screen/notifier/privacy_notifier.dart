import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/privacy_screen/models/privacy_model.dart';part 'privacy_state.dart';final privacyNotifier = StateNotifierProvider<PrivacyNotifier, PrivacyState>((ref) => PrivacyNotifier(PrivacyState(isSelectedSwitch: false, isSelectedSwitch1: false, privacyModelObj: PrivacyModel())));
/// A notifier that manages the state of a Privacy according to the event that is dispatched to it.
class PrivacyNotifier extends StateNotifier<PrivacyState> {PrivacyNotifier(PrivacyState state) : super(state);

void changeSwitchBox1(bool value) { state = state.copyWith(isSelectedSwitch: value); } 
void changeSwitchBox2(bool value) { state = state.copyWith(isSelectedSwitch1: value); } 
 }

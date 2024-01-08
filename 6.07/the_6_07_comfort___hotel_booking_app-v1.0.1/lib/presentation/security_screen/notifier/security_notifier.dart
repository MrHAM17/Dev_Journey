import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/security_screen/models/security_model.dart';part 'security_state.dart';final securityNotifier = StateNotifierProvider<SecurityNotifier, SecurityState>((ref) => SecurityNotifier(SecurityState(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false, securityModelObj: SecurityModel())));
/// A notifier that manages the state of a Security according to the event that is dispatched to it.
class SecurityNotifier extends StateNotifier<SecurityState> {SecurityNotifier(SecurityState state) : super(state);

void changeSwitchBox1(bool value) { state = state.copyWith(isSelectedSwitch: value); } 
void changeSwitchBox2(bool value) { state = state.copyWith(isSelectedSwitch1: value); } 
void changeSwitchBox3(bool value) { state = state.copyWith(isSelectedSwitch2: value); } 
 }

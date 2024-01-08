import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/notification_settings_screen/models/notification_settings_model.dart';part 'notification_settings_state.dart';final notificationSettingsNotifier = StateNotifierProvider<NotificationSettingsNotifier, NotificationSettingsState>((ref) => NotificationSettingsNotifier(NotificationSettingsState(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false, isSelectedSwitch3: false, isSelectedSwitch4: false, isSelectedSwitch5: false, notificationSettingsModelObj: NotificationSettingsModel())));
/// A notifier that manages the state of a NotificationSettings according to the event that is dispatched to it.
class NotificationSettingsNotifier extends StateNotifier<NotificationSettingsState> {NotificationSettingsNotifier(NotificationSettingsState state) : super(state);

void changeSwitchBox1(bool value) { state = state.copyWith(isSelectedSwitch: value); } 
void changeSwitchBox2(bool value) { state = state.copyWith(isSelectedSwitch1: value); } 
void changeSwitchBox3(bool value) { state = state.copyWith(isSelectedSwitch2: value); } 
void changeSwitchBox4(bool value) { state = state.copyWith(isSelectedSwitch3: value); } 
void changeSwitchBox5(bool value) { state = state.copyWith(isSelectedSwitch4: value); } 
void changeSwitchBox6(bool value) { state = state.copyWith(isSelectedSwitch5: value); } 
 }

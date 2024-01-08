import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/settings_screen/models/settings_model.dart';
part 'settings_state.dart';

final settingsNotifier = StateNotifierProvider<SettingsNotifier, SettingsState>(
    (ref) => SettingsNotifier(SettingsState(
        isSelectedSwitch: false, settingsModelObj: SettingsModel())));

/// A notifier that manages the state of a Settings according to the event that is dispatched to it.
class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(SettingsState state) : super(state);

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/setting_screen/models/setting_model.dart';
part 'setting_state.dart';

final settingNotifier = StateNotifierProvider<SettingNotifier, SettingState>(
    (ref) => SettingNotifier(SettingState(
        isSelectedSwitch: false,
        isSelectedSwitch1: false,
        isSelectedSwitch2: false,
        settingModelObj: SettingModel())));

/// A notifier that manages the state of a Setting according to the event that is dispatched to it.
class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier(SettingState state) : super(state);

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }

  void changeSwitchBox2(bool value) {
    state = state.copyWith(isSelectedSwitch1: value);
  }

  void changeSwitchBox3(bool value) {
    state = state.copyWith(isSelectedSwitch2: value);
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/settings_item_model.dart';
import 'package:the_6_04_health_care/presentation/settings_page/models/settings_model.dart';
part 'settings_state.dart';

final settingsNotifier = StateNotifierProvider<SettingsNotifier, SettingsState>(
  (ref) => SettingsNotifier(SettingsState(
    settingsModelObj: SettingsModel(settingsItemList: [
      SettingsItemModel(
          heartrate: ImageConstant.imgTelevision,
          heartRate: "Heart rate",
          heartRateCount: "215bpm"),
      SettingsItemModel(
          heartrate: ImageConstant.imgSettings,
          heartRate: "Calories",
          heartRateCount: "756cal"),
      SettingsItemModel(
          heartrate: ImageConstant.imgThumbsUp,
          heartRate: "Weight",
          heartRateCount: "103lbs")
    ]),
  )),
);

/// A notifier that manages the state of a Settings according to the event that is dispatched to it.
class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(SettingsState state) : super(state) {}
}

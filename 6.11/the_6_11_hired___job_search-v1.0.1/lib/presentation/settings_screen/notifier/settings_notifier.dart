import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/settings_screen/models/settings_model.dart';
part 'settings_state.dart';

final settingsNotifier = StateNotifierProvider<SettingsNotifier, SettingsState>(
    (ref) =>
        SettingsNotifier(SettingsState(settingsModelObj: SettingsModel())));

/// A notifier that manages the state of a Settings according to the event that is dispatched to it.
class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(SettingsState state) : super(state);
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/equalizer_item_model.dart';
import 'package:the_6_02_music_player/presentation/settings_screen/models/settings_model.dart';
part 'settings_state.dart';

final settingsNotifier = StateNotifierProvider<SettingsNotifier, SettingsState>(
    (ref) => SettingsNotifier(SettingsState(
            settingsModelObj: SettingsModel(equalizerItemList: [
          EqualizerItemModel(dBCounter: "4 dB", hzCounter: "100 Hz"),
          EqualizerItemModel(dBCounter: "3 dB", hzCounter: "150 Hz"),
          EqualizerItemModel(dBCounter: "0 dB", hzCounter: "200 Hz"),
          EqualizerItemModel(dBCounter: "0 dB", hzCounter: "250 Hz"),
          EqualizerItemModel(dBCounter: "-4 dB", hzCounter: "300 Hz"),
          EqualizerItemModel(dBCounter: "0 dB", hzCounter: "350 Hz")
        ]))));

/// A notifier that manages the state of a Settings according to the event that is dispatched to it.
class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(SettingsState state) : super(state);
}

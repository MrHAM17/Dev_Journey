import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/setting_screen/models/setting_model.dart';

/// A provider class for the SettingScreen.
///
/// This provider manages the state of the SettingScreen, including the
/// current settingModelObj

// ignore_for_file: must_be_immutable
class SettingProvider extends ChangeNotifier {
  SettingModel settingModelObj = SettingModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox3(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }
}

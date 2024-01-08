import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/settings_screen/models/settings_model.dart';

/// A provider class for the SettingsScreen.
///
/// This provider manages the state of the SettingsScreen, including the
/// current settingsModelObj

// ignore_for_file: must_be_immutable
class SettingsProvider extends ChangeNotifier {
  SettingsModel settingsModelObj = SettingsModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}

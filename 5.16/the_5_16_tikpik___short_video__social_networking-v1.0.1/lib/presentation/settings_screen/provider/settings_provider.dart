import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/settings_screen/models/settings_model.dart';/// A provider class for the SettingsScreen.
///
/// This provider manages the state of the SettingsScreen, including the
/// current settingsModelObj

// ignore_for_file: must_be_immutable
class SettingsProvider extends ChangeNotifier {SettingsModel settingsModelObj = SettingsModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }

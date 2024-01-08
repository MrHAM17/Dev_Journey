import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/profile_settings_page/models/profile_settings_model.dart';/// A provider class for the ProfileSettingsPage.
///
/// This provider manages the state of the ProfileSettingsPage, including the
/// current profileSettingsModelObj

// ignore_for_file: must_be_immutable
class ProfileSettingsProvider extends ChangeNotifier {ProfileSettingsModel profileSettingsModelObj = ProfileSettingsModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }

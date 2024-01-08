import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/notification_settings_screen/models/notification_settings_model.dart';/// A provider class for the NotificationSettingsScreen.
///
/// This provider manages the state of the NotificationSettingsScreen, including the
/// current notificationSettingsModelObj

// ignore_for_file: must_be_immutable
class NotificationSettingsProvider extends ChangeNotifier {NotificationSettingsModel notificationSettingsModelObj = NotificationSettingsModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

bool isSelectedSwitch3 = false;

bool isSelectedSwitch4 = false;

bool isSelectedSwitch5 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
void changeSwitchBox3(bool value) { isSelectedSwitch2 = value; notifyListeners(); } 
void changeSwitchBox4(bool value) { isSelectedSwitch3 = value; notifyListeners(); } 
void changeSwitchBox5(bool value) { isSelectedSwitch4 = value; notifyListeners(); } 
void changeSwitchBox6(bool value) { isSelectedSwitch5 = value; notifyListeners(); } 
 }

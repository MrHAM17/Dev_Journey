import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/privacy_screen/models/privacy_model.dart';/// A provider class for the PrivacyScreen.
///
/// This provider manages the state of the PrivacyScreen, including the
/// current privacyModelObj

// ignore_for_file: must_be_immutable
class PrivacyProvider extends ChangeNotifier {PrivacyModel privacyModelObj = PrivacyModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
 }

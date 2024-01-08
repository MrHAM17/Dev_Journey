import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/security_screen/models/security_model.dart';/// A provider class for the SecurityScreen.
///
/// This provider manages the state of the SecurityScreen, including the
/// current securityModelObj

// ignore_for_file: must_be_immutable
class SecurityProvider extends ChangeNotifier {SecurityModel securityModelObj = SecurityModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
void changeSwitchBox3(bool value) { isSelectedSwitch2 = value; notifyListeners(); } 
 }

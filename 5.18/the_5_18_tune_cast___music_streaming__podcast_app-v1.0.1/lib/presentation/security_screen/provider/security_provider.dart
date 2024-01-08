import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/security_screen/models/security_model.dart';/// A provider class for the SecurityScreen.
///
/// This provider manages the state of the SecurityScreen, including the
/// current securityModelObj

// ignore_for_file: must_be_immutable
class SecurityProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

SecurityModel securityModelObj = SecurityModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

@override void dispose() { super.dispose(); passwordController.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
void changeSwitchBox3(bool value) { isSelectedSwitch2 = value; notifyListeners(); } 
 }

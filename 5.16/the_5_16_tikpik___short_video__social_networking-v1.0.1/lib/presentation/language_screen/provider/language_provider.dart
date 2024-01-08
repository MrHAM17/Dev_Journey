import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/language_screen/models/language_model.dart';/// A provider class for the LanguageScreen.
///
/// This provider manages the state of the LanguageScreen, including the
/// current languageModelObj

// ignore_for_file: must_be_immutable
class LanguageProvider extends ChangeNotifier {LanguageModel languageModelObj = LanguageModel();

String radioGroup = "";

String language = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton1(String value) { radioGroup = value; notifyListeners(); } 
void changeRadioButton2(String value) { language = value; notifyListeners(); } 
 }

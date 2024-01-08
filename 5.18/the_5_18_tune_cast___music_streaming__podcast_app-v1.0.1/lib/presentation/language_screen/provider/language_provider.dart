import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/language_screen/models/language_model.dart';/// A provider class for the LanguageScreen.
///
/// This provider manages the state of the LanguageScreen, including the
/// current languageModelObj

// ignore_for_file: must_be_immutable
class LanguageProvider extends ChangeNotifier {LanguageModel languageModelObj = LanguageModel();

String suggested = "";

String others = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton1(String value) { suggested = value; notifyListeners(); } 
void changeRadioButton2(String value) { others = value; notifyListeners(); } 
 }

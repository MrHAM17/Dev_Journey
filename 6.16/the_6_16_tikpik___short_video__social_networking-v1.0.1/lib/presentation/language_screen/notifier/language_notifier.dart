import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/language_screen/models/language_model.dart';part 'language_state.dart';final languageNotifier = StateNotifierProvider<LanguageNotifier, LanguageState>((ref) => LanguageNotifier(LanguageState(radioGroup: '', language: '', languageModelObj: LanguageModel(radioList: ["lbl_english_us", "lbl_english_uk"], radioList1: ["lbl_mandarin", "lbl_hindi", "lbl_spanish", "lbl_french", "lbl_arabic", "lbl_bengali", "lbl_russian"]))));
/// A notifier that manages the state of a Language according to the event that is dispatched to it.
class LanguageNotifier extends StateNotifier<LanguageState> {LanguageNotifier(LanguageState state) : super(state);

void changeRadioButton1(String value) { state = state.copyWith(radioGroup: value); } 
void changeRadioButton2(String value) { state = state.copyWith(language: value); } 
 }

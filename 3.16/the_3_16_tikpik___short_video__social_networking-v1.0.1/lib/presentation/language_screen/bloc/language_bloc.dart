import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/language_screen/models/language_model.dart';part 'language_event.dart';part 'language_state.dart';/// A bloc that manages the state of a Language according to the event that is dispatched to it.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {LanguageBloc(LanguageState initialState) : super(initialState) { on<LanguageInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<LanguageState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<LanguageState> emit, ) { emit(state.copyWith(language: event.value)); } 
List<String> fillRadioList() { return ["lbl_english_us", "lbl_english_uk"]; } 
List<String> fillRadioList1() { return ["lbl_mandarin", "lbl_hindi", "lbl_spanish", "lbl_french", "lbl_arabic", "lbl_bengali", "lbl_russian"]; } 
_onInitialize(LanguageInitialEvent event, Emitter<LanguageState> emit, ) async  { emit(state.copyWith(radioGroup: "", language: "")); emit(state.copyWith(languageModelObj: state.languageModelObj?.copyWith(radioList: fillRadioList(), radioList1: fillRadioList1()))); } 
 }

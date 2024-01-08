import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/privacy_screen/models/privacy_model.dart';part 'privacy_event.dart';part 'privacy_state.dart';/// A bloc that manages the state of a Privacy according to the event that is dispatched to it.
class PrivacyBloc extends Bloc<PrivacyEvent, PrivacyState> {PrivacyBloc(PrivacyState initialState) : super(initialState) { on<PrivacyInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); }

_changeSwitch(ChangeSwitchEvent event, Emitter<PrivacyState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<PrivacyState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_onInitialize(PrivacyInitialEvent event, Emitter<PrivacyState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false)); } 
 }

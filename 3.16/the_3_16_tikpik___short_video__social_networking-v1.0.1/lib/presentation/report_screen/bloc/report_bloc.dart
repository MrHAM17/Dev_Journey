import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/report_screen/models/report_model.dart';part 'report_event.dart';part 'report_state.dart';/// A bloc that manages the state of a Report according to the event that is dispatched to it.
class ReportBloc extends Bloc<ReportEvent, ReportState> {ReportBloc(ReportState initialState) : super(initialState) { on<ReportInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<ReportState> emit, ) { emit(state.copyWith(selectAReason: event.value)); } 
List<String> fillRadioList() { return ["msg_violent_graphic", "lbl_animal_cruelty", "msg_pornography_nudity", "lbl_hate_speech", "msg_harassment_or_bullying", "msg_intellectual_property", "lbl_spam", "lbl_minor_safety", "lbl_other"]; } 
_onInitialize(ReportInitialEvent event, Emitter<ReportState> emit, ) async  { emit(state.copyWith(selectAReason: "")); emit(state.copyWith(reportModelObj: state.reportModelObj?.copyWith(radioList: fillRadioList()))); } 
 }

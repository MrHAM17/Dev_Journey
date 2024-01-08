import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/report_screen/models/report_model.dart';part 'report_state.dart';final reportNotifier = StateNotifierProvider<ReportNotifier, ReportState>((ref) => ReportNotifier(ReportState(selectAReason: '', reportModelObj: ReportModel(radioList: ["msg_violent_graphic", "lbl_animal_cruelty", "msg_pornography_nudity", "lbl_hate_speech", "msg_harassment_or_bullying", "msg_intellectual_property", "lbl_spam", "lbl_minor_safety", "lbl_other"]))));
/// A notifier that manages the state of a Report according to the event that is dispatched to it.
class ReportNotifier extends StateNotifier<ReportState> {ReportNotifier(ReportState state) : super(state);

void changeRadioButton1(String value) { state = state.copyWith(selectAReason: value); } 
 }

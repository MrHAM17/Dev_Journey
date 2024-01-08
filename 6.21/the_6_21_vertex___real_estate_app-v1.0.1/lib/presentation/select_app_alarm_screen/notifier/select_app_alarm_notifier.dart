import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/select_app_alarm_screen/models/select_app_alarm_model.dart';part 'select_app_alarm_state.dart';final selectAppAlarmNotifier = StateNotifierProvider<SelectAppAlarmNotifier, SelectAppAlarmState>((ref) => SelectAppAlarmNotifier(SelectAppAlarmState(selectAppAlarmModelObj: SelectAppAlarmModel())));
/// A notifier that manages the state of a SelectAppAlarm according to the event that is dispatched to it.
class SelectAppAlarmNotifier extends StateNotifier<SelectAppAlarmState> {SelectAppAlarmNotifier(SelectAppAlarmState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/home_alarm_container_screen/models/home_alarm_container_model.dart';part 'home_alarm_container_state.dart';final homeAlarmContainerNotifier = StateNotifierProvider<HomeAlarmContainerNotifier, HomeAlarmContainerState>((ref) => HomeAlarmContainerNotifier(HomeAlarmContainerState(homeAlarmContainerModelObj: HomeAlarmContainerModel())));
/// A notifier that manages the state of a HomeAlarmContainer according to the event that is dispatched to it.
class HomeAlarmContainerNotifier extends StateNotifier<HomeAlarmContainerState> {HomeAlarmContainerNotifier(HomeAlarmContainerState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/home_alarm_container_screen/models/home_alarm_container_model.dart';part 'home_alarm_container_event.dart';part 'home_alarm_container_state.dart';/// A bloc that manages the state of a HomeAlarmContainer according to the event that is dispatched to it.
class HomeAlarmContainerBloc extends Bloc<HomeAlarmContainerEvent, HomeAlarmContainerState> {HomeAlarmContainerBloc(HomeAlarmContainerState initialState) : super(initialState) { on<HomeAlarmContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeAlarmContainerInitialEvent event, Emitter<HomeAlarmContainerState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.notificationEmptyStatesScreen, ); } 
 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/go_live_screen/models/go_live_model.dart';part 'go_live_event.dart';part 'go_live_state.dart';/// A bloc that manages the state of a GoLive according to the event that is dispatched to it.
class GoLiveBloc extends Bloc<GoLiveEvent, GoLiveState> {GoLiveBloc(GoLiveState initialState) : super(initialState) { on<GoLiveInitialEvent>(_onInitialize); }

_onInitialize(GoLiveInitialEvent event, Emitter<GoLiveState> emit, ) async  {  } 
 }

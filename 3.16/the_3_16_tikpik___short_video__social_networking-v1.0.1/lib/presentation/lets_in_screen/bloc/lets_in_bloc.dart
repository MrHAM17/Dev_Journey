import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/lets_in_screen/models/lets_in_model.dart';part 'lets_in_event.dart';part 'lets_in_state.dart';/// A bloc that manages the state of a LetsIn according to the event that is dispatched to it.
class LetsInBloc extends Bloc<LetsInEvent, LetsInState> {LetsInBloc(LetsInState initialState) : super(initialState) { on<LetsInInitialEvent>(_onInitialize); }

_onInitialize(LetsInInitialEvent event, Emitter<LetsInState> emit, ) async  {  } 
 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/tell_us_about_yourself_screen/models/tell_us_about_yourself_model.dart';part 'tell_us_about_yourself_event.dart';part 'tell_us_about_yourself_state.dart';/// A bloc that manages the state of a TellUsAboutYourself according to the event that is dispatched to it.
class TellUsAboutYourselfBloc extends Bloc<TellUsAboutYourselfEvent, TellUsAboutYourselfState> {TellUsAboutYourselfBloc(TellUsAboutYourselfState initialState) : super(initialState) { on<TellUsAboutYourselfInitialEvent>(_onInitialize); }

_onInitialize(TellUsAboutYourselfInitialEvent event, Emitter<TellUsAboutYourselfState> emit, ) async  {  } 
 }

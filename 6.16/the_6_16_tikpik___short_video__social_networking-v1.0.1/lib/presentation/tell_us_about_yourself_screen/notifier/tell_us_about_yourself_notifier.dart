import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/tell_us_about_yourself_screen/models/tell_us_about_yourself_model.dart';part 'tell_us_about_yourself_state.dart';final tellUsAboutYourselfNotifier = StateNotifierProvider<TellUsAboutYourselfNotifier, TellUsAboutYourselfState>((ref) => TellUsAboutYourselfNotifier(TellUsAboutYourselfState(tellUsAboutYourselfModelObj: TellUsAboutYourselfModel())));
/// A notifier that manages the state of a TellUsAboutYourself according to the event that is dispatched to it.
class TellUsAboutYourselfNotifier extends StateNotifier<TellUsAboutYourselfState> {TellUsAboutYourselfNotifier(TellUsAboutYourselfState state) : super(state);

 }

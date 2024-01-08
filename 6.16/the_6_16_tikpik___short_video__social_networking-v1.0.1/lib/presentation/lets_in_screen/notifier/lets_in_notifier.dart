import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/lets_in_screen/models/lets_in_model.dart';part 'lets_in_state.dart';final letsInNotifier = StateNotifierProvider<LetsInNotifier, LetsInState>((ref) => LetsInNotifier(LetsInState(letsInModelObj: LetsInModel())));
/// A notifier that manages the state of a LetsIn according to the event that is dispatched to it.
class LetsInNotifier extends StateNotifier<LetsInState> {LetsInNotifier(LetsInState state) : super(state);

 }

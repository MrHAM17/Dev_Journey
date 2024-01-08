import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/go_live_screen/models/go_live_model.dart';part 'go_live_state.dart';final goLiveNotifier = StateNotifierProvider<GoLiveNotifier, GoLiveState>((ref) => GoLiveNotifier(GoLiveState(goLiveModelObj: GoLiveModel())));
/// A notifier that manages the state of a GoLive according to the event that is dispatched to it.
class GoLiveNotifier extends StateNotifier<GoLiveState> {GoLiveNotifier(GoLiveState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/call_screen/models/call_model.dart';part 'call_state.dart';final callNotifier = StateNotifierProvider<CallNotifier, CallState>((ref) => CallNotifier(CallState(callModelObj: CallModel())));
/// A notifier that manages the state of a Call according to the event that is dispatched to it.
class CallNotifier extends StateNotifier<CallState> {CallNotifier(CallState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/confirm_request_screen/models/confirm_request_model.dart';part 'confirm_request_state.dart';final confirmRequestNotifier = StateNotifierProvider<ConfirmRequestNotifier, ConfirmRequestState>((ref) => ConfirmRequestNotifier(ConfirmRequestState(confirmRequestModelObj: ConfirmRequestModel())));
/// A notifier that manages the state of a ConfirmRequest according to the event that is dispatched to it.
class ConfirmRequestNotifier extends StateNotifier<ConfirmRequestState> {ConfirmRequestNotifier(ConfirmRequestState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/logout_modal_bottomsheet/models/logout_modal_model.dart';part 'logout_modal_state.dart';final logoutModalNotifier = StateNotifierProvider<LogoutModalNotifier, LogoutModalState>((ref) => LogoutModalNotifier(LogoutModalState(logoutModalModelObj: LogoutModalModel())));
/// A notifier that manages the state of a LogoutModal according to the event that is dispatched to it.
class LogoutModalNotifier extends StateNotifier<LogoutModalState> {LogoutModalNotifier(LogoutModalState state) : super(state);

 }

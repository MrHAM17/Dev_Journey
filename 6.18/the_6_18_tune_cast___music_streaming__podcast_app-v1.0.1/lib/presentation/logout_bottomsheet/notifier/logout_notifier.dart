import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/logout_bottomsheet/models/logout_model.dart';
part 'logout_state.dart';

final logoutNotifier = StateNotifierProvider<LogoutNotifier, LogoutState>(
  (ref) => LogoutNotifier(LogoutState(
    logoutModelObj: LogoutModel(),
  )),
);

/// A notifier that manages the state of a Logout according to the event that is dispatched to it.
class LogoutNotifier extends StateNotifier<LogoutState> {
  LogoutNotifier(LogoutState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/logout_bottomsheet/models/logout_model.dart';
part 'logout_event.dart';
part 'logout_state.dart';

/// A bloc that manages the state of a Logout according to the event that is dispatched to it.
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(LogoutState initialState) : super(initialState) {
    on<LogoutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogoutInitialEvent event,
    Emitter<LogoutState> emit,
  ) async {}
}

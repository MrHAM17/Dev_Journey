import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/reset_password_success_screen/models/reset_password_success_model.dart';
part 'reset_password_success_event.dart';
part 'reset_password_success_state.dart';

/// A bloc that manages the state of a ResetPasswordSuccess according to the event that is dispatched to it.
class ResetPasswordSuccessBloc
    extends Bloc<ResetPasswordSuccessEvent, ResetPasswordSuccessState> {
  ResetPasswordSuccessBloc(ResetPasswordSuccessState initialState)
      : super(initialState) {
    on<ResetPasswordSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordSuccessInitialEvent event,
    Emitter<ResetPasswordSuccessState> emit,
  ) async {}
}

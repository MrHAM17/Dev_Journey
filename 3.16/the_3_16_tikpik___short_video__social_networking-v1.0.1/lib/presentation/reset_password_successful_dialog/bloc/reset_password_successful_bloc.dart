import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/reset_password_successful_dialog/models/reset_password_successful_model.dart';
part 'reset_password_successful_event.dart';
part 'reset_password_successful_state.dart';

/// A bloc that manages the state of a ResetPasswordSuccessful according to the event that is dispatched to it.
class ResetPasswordSuccessfulBloc
    extends Bloc<ResetPasswordSuccessfulEvent, ResetPasswordSuccessfulState> {
  ResetPasswordSuccessfulBloc(ResetPasswordSuccessfulState initialState)
      : super(initialState) {
    on<ResetPasswordSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordSuccessfulInitialEvent event,
    Emitter<ResetPasswordSuccessfulState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/reset_password_success_screen/models/reset_password_success_model.dart';
part 'reset_password_success_state.dart';

final resetPasswordSuccessNotifier = StateNotifierProvider<
        ResetPasswordSuccessNotifier, ResetPasswordSuccessState>(
    (ref) => ResetPasswordSuccessNotifier(ResetPasswordSuccessState(
        resetPasswordSuccessModelObj: ResetPasswordSuccessModel())));

/// A notifier that manages the state of a ResetPasswordSuccess according to the event that is dispatched to it.
class ResetPasswordSuccessNotifier
    extends StateNotifier<ResetPasswordSuccessState> {
  ResetPasswordSuccessNotifier(ResetPasswordSuccessState state) : super(state);
}

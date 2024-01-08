import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/reset_password_successful_dialog/models/reset_password_successful_model.dart';
part 'reset_password_successful_state.dart';

final resetPasswordSuccessfulNotifier = StateNotifierProvider<
    ResetPasswordSuccessfulNotifier, ResetPasswordSuccessfulState>(
  (ref) => ResetPasswordSuccessfulNotifier(ResetPasswordSuccessfulState(
    resetPasswordSuccessfulModelObj: ResetPasswordSuccessfulModel(),
  )),
);

/// A notifier that manages the state of a ResetPasswordSuccessful according to the event that is dispatched to it.
class ResetPasswordSuccessfulNotifier
    extends StateNotifier<ResetPasswordSuccessfulState> {
  ResetPasswordSuccessfulNotifier(ResetPasswordSuccessfulState state)
      : super(state) {}
}

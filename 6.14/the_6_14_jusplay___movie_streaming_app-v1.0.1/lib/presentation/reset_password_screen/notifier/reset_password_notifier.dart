import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/reset_password_screen/models/reset_password_model.dart';
part 'reset_password_state.dart';

final resetPasswordNotifier =
    StateNotifierProvider<ResetPasswordNotifier, ResetPasswordState>((ref) =>
        ResetPasswordNotifier(ResetPasswordState(
            passwordController: TextEditingController(),
            newpasswordController: TextEditingController(),
            isShowPassword: false,
            isShowPassword1: false,
            resetPasswordModelObj: ResetPasswordModel())));

/// A notifier that manages the state of a ResetPassword according to the event that is dispatched to it.
class ResetPasswordNotifier extends StateNotifier<ResetPasswordState> {
  ResetPasswordNotifier(ResetPasswordState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }

  void changePasswordVisibility1() {
    state = state.copyWith(isShowPassword1: !(state.isShowPassword1 ?? false));
  }
}

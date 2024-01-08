import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/log_in_screen/models/log_in_model.dart';
part 'log_in_state.dart';

final logInNotifier = StateNotifierProvider<LogInNotifier, LogInState>((ref) =>
    LogInNotifier(LogInState(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: false,
        logInModelObj: LogInModel())));

/// A notifier that manages the state of a LogIn according to the event that is dispatched to it.
class LogInNotifier extends StateNotifier<LogInState> {
  LogInNotifier(LogInState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}

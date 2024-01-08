import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/sign_up_complete_account_screen/models/sign_up_complete_account_model.dart';
part 'sign_up_complete_account_state.dart';

final signUpCompleteAccountNotifier = StateNotifierProvider<
        SignUpCompleteAccountNotifier, SignUpCompleteAccountState>(
    (ref) => SignUpCompleteAccountNotifier(SignUpCompleteAccountState(
        emailController: TextEditingController(),
        lastNameController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: false,
        signUpCompleteAccountModelObj: SignUpCompleteAccountModel())));

/// A notifier that manages the state of a SignUpCompleteAccount according to the event that is dispatched to it.
class SignUpCompleteAccountNotifier
    extends StateNotifier<SignUpCompleteAccountState> {
  SignUpCompleteAccountNotifier(SignUpCompleteAccountState state)
      : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}

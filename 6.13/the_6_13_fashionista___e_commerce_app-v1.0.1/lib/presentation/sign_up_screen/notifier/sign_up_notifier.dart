import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/sign_up_screen/models/sign_up_model.dart';
part 'sign_up_state.dart';

final signUpNotifier = StateNotifierProvider<SignUpNotifier, SignUpState>(
    (ref) => SignUpNotifier(SignUpState(
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: false,
        signUpModelObj: SignUpModel())));

/// A notifier that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier(SignUpState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}

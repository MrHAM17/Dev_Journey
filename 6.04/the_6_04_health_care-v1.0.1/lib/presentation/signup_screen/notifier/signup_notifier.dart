import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/signup_screen/models/signup_model.dart';
part 'signup_state.dart';

final signupNotifier = StateNotifierProvider<SignupNotifier, SignupState>(
    (ref) => SignupNotifier(SignupState(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        passwordController1: TextEditingController(),
        signupModelObj: SignupModel())));

/// A notifier that manages the state of a Signup according to the event that is dispatched to it.
class SignupNotifier extends StateNotifier<SignupState> {
  SignupNotifier(SignupState state) : super(state);
}

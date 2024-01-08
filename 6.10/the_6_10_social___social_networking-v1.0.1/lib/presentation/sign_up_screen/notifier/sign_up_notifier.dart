import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/sign_up_screen/models/sign_up_model.dart';
part 'sign_up_state.dart';

final signUpNotifier = StateNotifierProvider<SignUpNotifier, SignUpState>(
  (ref) => SignUpNotifier(SignUpState(
    firstNameController: TextEditingController(),
    lastNameController: TextEditingController(),
    emailController: TextEditingController(),
    phoneController: TextEditingController(),
    dateOfBirthController: TextEditingController(),
    gender: '',
    signUpModelObj: SignUpModel(radioList: ["lbl_female", "lbl_male"]),
  )),
);

/// A notifier that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier(SignUpState state) : super(state) {}

  void changeRadioButton1(String value) {
    state = state.copyWith(gender: value);
  }
}

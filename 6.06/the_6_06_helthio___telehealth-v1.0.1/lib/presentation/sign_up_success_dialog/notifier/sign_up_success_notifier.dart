import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/sign_up_success_dialog/models/sign_up_success_model.dart';
part 'sign_up_success_state.dart';

final signUpSuccessNotifier =
    StateNotifierProvider<SignUpSuccessNotifier, SignUpSuccessState>((ref) =>
        SignUpSuccessNotifier(
            SignUpSuccessState(signUpSuccessModelObj: SignUpSuccessModel())));

/// A notifier that manages the state of a SignUpSuccess according to the event that is dispatched to it.
class SignUpSuccessNotifier extends StateNotifier<SignUpSuccessState> {
  SignUpSuccessNotifier(SignUpSuccessState state) : super(state);
}

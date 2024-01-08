import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/sign_up_sign_in_screen/models/sign_up_sign_in_model.dart';
part 'sign_up_sign_in_state.dart';

final signUpSignInNotifier =
    StateNotifierProvider<SignUpSignInNotifier, SignUpSignInState>((ref) =>
        SignUpSignInNotifier(
            SignUpSignInState(signUpSignInModelObj: SignUpSignInModel())));

/// A notifier that manages the state of a SignUpSignIn according to the event that is dispatched to it.
class SignUpSignInNotifier extends StateNotifier<SignUpSignInState> {
  SignUpSignInNotifier(SignUpSignInState state) : super(state);
}

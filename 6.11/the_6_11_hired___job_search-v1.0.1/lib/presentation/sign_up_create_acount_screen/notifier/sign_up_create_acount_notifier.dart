import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/sign_up_create_acount_screen/models/sign_up_create_acount_model.dart';
part 'sign_up_create_acount_state.dart';

final signUpCreateAcountNotifier =
    StateNotifierProvider<SignUpCreateAcountNotifier, SignUpCreateAcountState>(
        (ref) => SignUpCreateAcountNotifier(SignUpCreateAcountState(
            emailController: TextEditingController(),
            signUpCreateAcountModelObj: SignUpCreateAcountModel())));

/// A notifier that manages the state of a SignUpCreateAcount according to the event that is dispatched to it.
class SignUpCreateAcountNotifier
    extends StateNotifier<SignUpCreateAcountState> {
  SignUpCreateAcountNotifier(SignUpCreateAcountState state) : super(state);
}

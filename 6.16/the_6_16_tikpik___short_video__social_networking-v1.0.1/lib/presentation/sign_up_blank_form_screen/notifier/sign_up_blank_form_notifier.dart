import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';part 'sign_up_blank_form_state.dart';final signUpBlankFormNotifier = StateNotifierProvider<SignUpBlankFormNotifier, SignUpBlankFormState>((ref) => SignUpBlankFormNotifier(SignUpBlankFormState(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: false, rememberme: false, signUpBlankFormModelObj: SignUpBlankFormModel())));
/// A notifier that manages the state of a SignUpBlankForm according to the event that is dispatched to it.
class SignUpBlankFormNotifier extends StateNotifier<SignUpBlankFormState> {SignUpBlankFormNotifier(SignUpBlankFormState state) : super(state);

void changePasswordVisibility() { state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false)); } 
void changeCheckBox1(bool value) { state = state.copyWith(rememberme: value); } 
 }

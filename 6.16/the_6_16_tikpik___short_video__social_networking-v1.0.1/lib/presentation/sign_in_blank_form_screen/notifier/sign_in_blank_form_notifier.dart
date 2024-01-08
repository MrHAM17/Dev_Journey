import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';part 'sign_in_blank_form_state.dart';final signInBlankFormNotifier = StateNotifierProvider<SignInBlankFormNotifier, SignInBlankFormState>((ref) => SignInBlankFormNotifier(SignInBlankFormState(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: false, rememberme: false, signInBlankFormModelObj: SignInBlankFormModel())));
/// A notifier that manages the state of a SignInBlankForm according to the event that is dispatched to it.
class SignInBlankFormNotifier extends StateNotifier<SignInBlankFormState> {SignInBlankFormNotifier(SignInBlankFormState state) : super(state);

void changePasswordVisibility() { state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false)); } 
void changeCheckBox1(bool value) { state = state.copyWith(rememberme: value); } 
 }

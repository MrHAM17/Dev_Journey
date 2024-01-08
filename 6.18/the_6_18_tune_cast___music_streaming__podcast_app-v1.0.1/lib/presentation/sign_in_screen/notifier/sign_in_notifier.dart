import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/sign_in_screen/models/sign_in_model.dart';part 'sign_in_state.dart';final signInNotifier = StateNotifierProvider<SignInNotifier, SignInState>((ref) => SignInNotifier(SignInState(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: false, rememberme: false, signInModelObj: SignInModel())));
/// A notifier that manages the state of a SignIn according to the event that is dispatched to it.
class SignInNotifier extends StateNotifier<SignInState> {SignInNotifier(SignInState state) : super(state);

void changePasswordVisibility() { state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false)); } 
void changeCheckBox1(bool value) { state = state.copyWith(rememberme: value); } 
 }

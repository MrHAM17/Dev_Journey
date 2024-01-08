import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/sign_up_blank_screen/models/sign_up_blank_model.dart';part 'sign_up_blank_state.dart';final signUpBlankNotifier = StateNotifierProvider<SignUpBlankNotifier, SignUpBlankState>((ref) => SignUpBlankNotifier(SignUpBlankState(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: false, rememberme: false, signUpBlankModelObj: SignUpBlankModel())));
/// A notifier that manages the state of a SignUpBlank according to the event that is dispatched to it.
class SignUpBlankNotifier extends StateNotifier<SignUpBlankState> {SignUpBlankNotifier(SignUpBlankState state) : super(state);

void changePasswordVisibility() { state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false)); } 
void changeCheckBox1(bool value) { state = state.copyWith(rememberme: value); } 
 }

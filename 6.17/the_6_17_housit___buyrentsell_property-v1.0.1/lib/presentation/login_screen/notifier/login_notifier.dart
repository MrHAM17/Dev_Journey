import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/login_screen/models/login_model.dart';part 'login_state.dart';final loginNotifier = StateNotifierProvider<LoginNotifier, LoginState>((ref) => LoginNotifier(LoginState(loginModelObj: LoginModel())));
/// A notifier that manages the state of a Login according to the event that is dispatched to it.
class LoginNotifier extends StateNotifier<LoginState> {LoginNotifier(LoginState state) : super(state);

 }

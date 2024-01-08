import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/register_form_empty_screen/models/register_form_empty_model.dart';part 'register_form_empty_state.dart';final registerFormEmptyNotifier = StateNotifierProvider<RegisterFormEmptyNotifier, RegisterFormEmptyState>((ref) => RegisterFormEmptyNotifier(RegisterFormEmptyState(fullNameController: TextEditingController(), emailController: TextEditingController(), passwordController: TextEditingController(), registerFormEmptyModelObj: RegisterFormEmptyModel())));
/// A notifier that manages the state of a RegisterFormEmpty according to the event that is dispatched to it.
class RegisterFormEmptyNotifier extends StateNotifier<RegisterFormEmptyState> {RegisterFormEmptyNotifier(RegisterFormEmptyState state) : super(state);

 }

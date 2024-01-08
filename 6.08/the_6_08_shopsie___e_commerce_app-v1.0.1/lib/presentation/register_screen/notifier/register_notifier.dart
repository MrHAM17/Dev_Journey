import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/register_screen/models/register_model.dart';
part 'register_state.dart';

final registerNotifier = StateNotifierProvider<RegisterNotifier, RegisterState>(
    (ref) => RegisterNotifier(RegisterState(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        registerModelObj: RegisterModel())));

/// A notifier that manages the state of a Register according to the event that is dispatched to it.
class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier(RegisterState state) : super(state);
}

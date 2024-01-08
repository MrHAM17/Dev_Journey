import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/create_new_password_screen/models/create_new_password_model.dart';part 'create_new_password_state.dart';final createNewPasswordNotifier = StateNotifierProvider<CreateNewPasswordNotifier, CreateNewPasswordState>((ref) => CreateNewPasswordNotifier(CreateNewPasswordState(newpasswordController: TextEditingController(), newpasswordController1: TextEditingController(), isShowPassword: false, isShowPassword1: false, createNewPasswordModelObj: CreateNewPasswordModel())));
/// A notifier that manages the state of a CreateNewPassword according to the event that is dispatched to it.
class CreateNewPasswordNotifier extends StateNotifier<CreateNewPasswordState> {CreateNewPasswordNotifier(CreateNewPasswordState state) : super(state);

void changePasswordVisibility() { state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false)); } 
void changePasswordVisibility1() { state = state.copyWith(isShowPassword1: !(state.isShowPassword1 ?? false)); } 
 }

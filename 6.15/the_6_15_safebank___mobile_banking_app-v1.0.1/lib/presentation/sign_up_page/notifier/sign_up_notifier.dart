import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/sign_up_page/models/sign_up_model.dart';
part 'sign_up_state.dart';

final signUpNotifier = StateNotifierProvider<SignUpNotifier, SignUpState>(
    (ref) => SignUpNotifier(SignUpState(
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        checkmarkController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        selectedDropDownValue: SelectionPopupModel(title: ''),
        selectedDropDownValue1: SelectionPopupModel(title: ''),
        isShowPassword: false,
        signUpModelObj: SignUpModel(dropdownItemList: [
          SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
          SelectionPopupModel(id: 2, title: "Item Two"),
          SelectionPopupModel(id: 3, title: "Item Three")
        ], dropdownItemList1: [
          SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
          SelectionPopupModel(id: 2, title: "Item Two"),
          SelectionPopupModel(id: 3, title: "Item Three")
        ]))));

/// A notifier that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier(SignUpState state) : super(state);

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/login_page_tab_container_screen/models/login_page_tab_container_model.dart';
part 'login_page_tab_container_state.dart';

final loginPageTabContainerNotifier = StateNotifierProvider<
    LoginPageTabContainerNotifier, LoginPageTabContainerState>(
  (ref) => LoginPageTabContainerNotifier(LoginPageTabContainerState(
    loginPageTabContainerModelObj: LoginPageTabContainerModel(),
  )),
);

/// A notifier that manages the state of a LoginPageTabContainer according to the event that is dispatched to it.
class LoginPageTabContainerNotifier
    extends StateNotifier<LoginPageTabContainerState> {
  LoginPageTabContainerNotifier(LoginPageTabContainerState state)
      : super(state) {}
}

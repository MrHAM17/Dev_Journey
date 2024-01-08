import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/login_page_tab_container_screen/models/login_page_tab_container_model.dart';
part 'login_page_tab_container_event.dart';
part 'login_page_tab_container_state.dart';

/// A bloc that manages the state of a LoginPageTabContainer according to the event that is dispatched to it.
class LoginPageTabContainerBloc
    extends Bloc<LoginPageTabContainerEvent, LoginPageTabContainerState> {
  LoginPageTabContainerBloc(LoginPageTabContainerState initialState)
      : super(initialState) {
    on<LoginPageTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageTabContainerInitialEvent event,
    Emitter<LoginPageTabContainerState> emit,
  ) async {}
}

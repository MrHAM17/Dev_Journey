import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/login_page_tab_container_screen/models/login_page_tab_container_model.dart';

/// A provider class for the LoginPageTabContainerScreen.
///
/// This provider manages the state of the LoginPageTabContainerScreen, including the
/// current loginPageTabContainerModelObj
class LoginPageTabContainerProvider extends ChangeNotifier {
  LoginPageTabContainerModel loginPageTabContainerModelObj =
      LoginPageTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/login_page_tab_container_screen/models/login_page_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginPageTabContainerScreen.
///
/// This class manages the state of the LoginPageTabContainerScreen, including the
/// current loginPageTabContainerModelObj
class LoginPageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LoginPageTabContainerModel> loginPageTabContainerModelObj =
      LoginPageTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}

import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/setting_security_page/models/setting_security_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingSecurityPage.
///
/// This class manages the state of the SettingSecurityPage, including the
/// current settingSecurityModelObj
class SettingSecurityController extends GetxController {
  SettingSecurityController(this.settingSecurityModelObj);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  Rx<SettingSecurityModel> settingSecurityModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    newpasswordController.dispose();
  }
}

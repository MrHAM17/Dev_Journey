import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/presentation/reset_password_phone_page/models/reset_password_phone_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetPasswordPhonePage.
///
/// This class manages the state of the ResetPasswordPhonePage, including the
/// current resetPasswordPhoneModelObj
class ResetPasswordPhoneController extends GetxController {
  ResetPasswordPhoneController(this.resetPasswordPhoneModelObj);

  TextEditingController mobileNoController = TextEditingController();

  Rx<ResetPasswordPhoneModel> resetPasswordPhoneModelObj;

  @override
  void onClose() {
    super.onClose();
    mobileNoController.dispose();
  }
}

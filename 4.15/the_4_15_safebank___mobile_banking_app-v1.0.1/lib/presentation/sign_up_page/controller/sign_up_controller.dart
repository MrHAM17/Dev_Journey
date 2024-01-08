import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/sign_up_page/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpPage.
///
/// This class manages the state of the SignUpPage, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  SignUpController(this.signUpModelObj);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController checkmarkController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj;

  Rx<bool> isShowPassword = true.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    checkmarkController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signUpModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signUpModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in signUpModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signUpModelObj.value.dropdownItemList1.refresh();
  }
}

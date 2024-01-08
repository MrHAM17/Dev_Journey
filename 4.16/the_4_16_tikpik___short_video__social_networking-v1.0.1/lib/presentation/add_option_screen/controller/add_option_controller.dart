import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/add_option_screen/models/add_option_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddOptionScreen.
///
/// This class manages the state of the AddOptionScreen, including the
/// current addOptionModelObj
class AddOptionController extends GetxController {
  TextEditingController stateInactiveController = TextEditingController();

  TextEditingController stateInactiveController1 = TextEditingController();

  Rx<AddOptionModel> addOptionModelObj = AddOptionModel().obs;

  @override
  void onClose() {
    super.onClose();
    stateInactiveController.dispose();
    stateInactiveController1.dispose();
  }
}

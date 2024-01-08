import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/add_option_screen/models/add_option_model.dart';

/// A provider class for the AddOptionScreen.
///
/// This provider manages the state of the AddOptionScreen, including the
/// current addOptionModelObj
class AddOptionProvider extends ChangeNotifier {
  TextEditingController stateInactiveController = TextEditingController();

  TextEditingController stateInactiveController1 = TextEditingController();

  AddOptionModel addOptionModelObj = AddOptionModel();

  @override
  void dispose() {
    super.dispose();
    stateInactiveController.dispose();
    stateInactiveController1.dispose();
  }
}

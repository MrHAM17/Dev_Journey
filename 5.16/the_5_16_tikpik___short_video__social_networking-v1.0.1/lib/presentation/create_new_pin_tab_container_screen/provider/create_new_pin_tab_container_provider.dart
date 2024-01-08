import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/create_new_pin_tab_container_screen/models/create_new_pin_tab_container_model.dart';

/// A provider class for the CreateNewPinTabContainerScreen.
///
/// This provider manages the state of the CreateNewPinTabContainerScreen, including the
/// current createNewPinTabContainerModelObj
class CreateNewPinTabContainerProvider extends ChangeNotifier {
  CreateNewPinTabContainerModel createNewPinTabContainerModelObj =
      CreateNewPinTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

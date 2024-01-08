import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/create_new_pin_tab_container_screen/models/create_new_pin_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreateNewPinTabContainerScreen.
///
/// This class manages the state of the CreateNewPinTabContainerScreen, including the
/// current createNewPinTabContainerModelObj
class CreateNewPinTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<CreateNewPinTabContainerModel> createNewPinTabContainerModelObj =
      CreateNewPinTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}

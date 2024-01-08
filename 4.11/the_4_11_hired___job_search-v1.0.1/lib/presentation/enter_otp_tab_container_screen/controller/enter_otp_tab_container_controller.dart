import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/enter_otp_tab_container_screen/models/enter_otp_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EnterOtpTabContainerScreen.
///
/// This class manages the state of the EnterOtpTabContainerScreen, including the
/// current enterOtpTabContainerModelObj
class EnterOtpTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<EnterOtpTabContainerModel> enterOtpTabContainerModelObj =
      EnterOtpTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}

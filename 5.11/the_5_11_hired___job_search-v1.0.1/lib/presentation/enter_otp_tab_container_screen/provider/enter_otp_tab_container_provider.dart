import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/enter_otp_tab_container_screen/models/enter_otp_tab_container_model.dart';

/// A provider class for the EnterOtpTabContainerScreen.
///
/// This provider manages the state of the EnterOtpTabContainerScreen, including the
/// current enterOtpTabContainerModelObj
class EnterOtpTabContainerProvider extends ChangeNotifier {
  EnterOtpTabContainerModel enterOtpTabContainerModelObj =
      EnterOtpTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

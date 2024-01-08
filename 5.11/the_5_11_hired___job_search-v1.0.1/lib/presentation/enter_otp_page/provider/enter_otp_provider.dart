import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/enter_otp_page/models/enter_otp_model.dart';

/// A provider class for the EnterOtpPage.
///
/// This provider manages the state of the EnterOtpPage, including the
/// current enterOtpModelObj

// ignore_for_file: must_be_immutable
class EnterOtpProvider extends ChangeNotifier {
  EnterOtpModel enterOtpModelObj = EnterOtpModel();

  @override
  void dispose() {
    super.dispose();
  }
}

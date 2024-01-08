import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/mobile_prepaid_three_screen/models/mobile_prepaid_three_model.dart';

/// A provider class for the MobilePrepaidThreeScreen.
///
/// This provider manages the state of the MobilePrepaidThreeScreen, including the
/// current mobilePrepaidThreeModelObj

// ignore_for_file: must_be_immutable
class MobilePrepaidThreeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  MobilePrepaidThreeModel mobilePrepaidThreeModelObj =
      MobilePrepaidThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/mobile_prepaid_two_screen/models/mobile_prepaid_two_model.dart';

/// A provider class for the MobilePrepaidTwoScreen.
///
/// This provider manages the state of the MobilePrepaidTwoScreen, including the
/// current mobilePrepaidTwoModelObj

// ignore_for_file: must_be_immutable
class MobilePrepaidTwoProvider extends ChangeNotifier {
  TextEditingController priceController = TextEditingController();

  MobilePrepaidTwoModel mobilePrepaidTwoModelObj = MobilePrepaidTwoModel();

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
  }
}

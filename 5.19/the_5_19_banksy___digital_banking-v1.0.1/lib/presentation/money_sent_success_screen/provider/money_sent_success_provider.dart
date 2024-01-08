import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/money_sent_success_screen/models/money_sent_success_model.dart';

/// A provider class for the MoneySentSuccessScreen.
///
/// This provider manages the state of the MoneySentSuccessScreen, including the
/// current moneySentSuccessModelObj
class MoneySentSuccessProvider extends ChangeNotifier {
  MoneySentSuccessModel moneySentSuccessModelObj = MoneySentSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}

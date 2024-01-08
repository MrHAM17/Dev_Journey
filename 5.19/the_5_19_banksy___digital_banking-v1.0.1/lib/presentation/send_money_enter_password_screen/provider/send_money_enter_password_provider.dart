import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/send_money_enter_password_screen/models/send_money_enter_password_model.dart';

/// A provider class for the SendMoneyEnterPasswordScreen.
///
/// This provider manages the state of the SendMoneyEnterPasswordScreen, including the
/// current sendMoneyEnterPasswordModelObj

// ignore_for_file: must_be_immutable
class SendMoneyEnterPasswordProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  SendMoneyEnterPasswordModel sendMoneyEnterPasswordModelObj =
      SendMoneyEnterPasswordModel();

  @override
  void dispose() {
    super.dispose();
  }
}

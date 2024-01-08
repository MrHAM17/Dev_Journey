import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/enter_money_screen/models/enter_money_model.dart';

/// A provider class for the EnterMoneyScreen.
///
/// This provider manages the state of the EnterMoneyScreen, including the
/// current enterMoneyModelObj

// ignore_for_file: must_be_immutable
class EnterMoneyProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  EnterMoneyModel enterMoneyModelObj = EnterMoneyModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}

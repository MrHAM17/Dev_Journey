import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/send_money_screen/models/send_money_model.dart';
import '../models/profilelist_item_model.dart';
import '../models/nineteen_item_model.dart';
import '../models/twentytwo_item_model.dart';

/// A provider class for the SendMoneyScreen.
///
/// This provider manages the state of the SendMoneyScreen, including the
/// current sendMoneyModelObj

// ignore_for_file: must_be_immutable
class SendMoneyProvider extends ChangeNotifier {
  SendMoneyModel sendMoneyModelObj = SendMoneyModel();

  @override
  void dispose() {
    super.dispose();
  }
}

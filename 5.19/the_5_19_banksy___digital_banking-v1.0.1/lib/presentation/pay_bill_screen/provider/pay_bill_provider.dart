import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/pay_bill_screen/models/pay_bill_model.dart';
import '../models/paybill_item_model.dart';

/// A provider class for the PayBillScreen.
///
/// This provider manages the state of the PayBillScreen, including the
/// current payBillModelObj

// ignore_for_file: must_be_immutable
class PayBillProvider extends ChangeNotifier {
  PayBillModel payBillModelObj = PayBillModel();

  @override
  void dispose() {
    super.dispose();
  }
}

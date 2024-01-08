import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paybill_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/pay_bill_screen/models/pay_bill_model.dart';
part 'pay_bill_state.dart';

final payBillNotifier = StateNotifierProvider<PayBillNotifier, PayBillState>(
    (ref) => PayBillNotifier(PayBillState(
            payBillModelObj: PayBillModel(paybillItemList: [
          PaybillItemModel(
              electricityBill: ImageConstant.imgUserYellowA400,
              electricityBill1: "Electricity\nBill",
              card: "Pay bill of this month"),
          PaybillItemModel(
              electricityBill: ImageConstant.imgVideoCamera,
              electricityBill1: "Water\nBill",
              card: "Pay bill of this month"),
          PaybillItemModel(
              electricityBill: ImageConstant.imgForward,
              electricityBill1: "Network\nBill",
              card: "Pay bill of this month")
        ]))));

/// A notifier that manages the state of a PayBill according to the event that is dispatched to it.
class PayBillNotifier extends StateNotifier<PayBillState> {
  PayBillNotifier(PayBillState state) : super(state);
}

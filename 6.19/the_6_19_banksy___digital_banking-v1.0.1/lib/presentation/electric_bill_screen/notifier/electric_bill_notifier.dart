import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/electricbill_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/electric_bill_screen/models/electric_bill_model.dart';
part 'electric_bill_state.dart';

final electricBillNotifier =
    StateNotifierProvider<ElectricBillNotifier, ElectricBillState>(
        (ref) => ElectricBillNotifier(ElectricBillState(
            nameController: TextEditingController(),
            addressController: TextEditingController(),
            phoneController: TextEditingController(),
            inputsController: TextEditingController(),
            dateController: TextEditingController(),
            dateController1: TextEditingController(),
            electricBillModelObj: ElectricBillModel(electricbillItemList: [
              ElectricbillItemModel(
                  jonathanAnderson: "Jonathan Anderson",
                  text: "1222 3443 9881 1222",
                  balance: "Balance",
                  price: " 31,250")
            ]))));

/// A notifier that manages the state of a ElectricBill according to the event that is dispatched to it.
class ElectricBillNotifier extends StateNotifier<ElectricBillState> {
  ElectricBillNotifier(ElectricBillState state) : super(state);
}

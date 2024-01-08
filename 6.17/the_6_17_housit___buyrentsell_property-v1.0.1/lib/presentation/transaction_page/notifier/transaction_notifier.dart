import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transaction_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/transaction_page/models/transaction_model.dart';
part 'transaction_state.dart';

final transactionNotifier =
    StateNotifierProvider<TransactionNotifier, TransactionState>(
  (ref) => TransactionNotifier(TransactionState(
    transactionModelObj: TransactionModel(transactionItemList: [
      TransactionItemModel(
          wingsTower: ImageConstant.imgShape17,
          wingsTower1: "Wings Tower",
          date: "November 21,2021"),
      TransactionItemModel(
          wingsTower: ImageConstant.imgShape33,
          wingsTower1: "Bridgeland Modern ",
          date: "December")
    ]),
  )),
);

/// A notifier that manages the state of a Transaction according to the event that is dispatched to it.
class TransactionNotifier extends StateNotifier<TransactionState> {
  TransactionNotifier(TransactionState state) : super(state) {}
}

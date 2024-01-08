import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/history_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/history_screen/models/history_model.dart';
part 'history_state.dart';

final historyNotifier = StateNotifierProvider<HistoryNotifier, HistoryState>(
  (ref) => HistoryNotifier(HistoryState(
    selectedDropDownValue: SelectionPopupModel(title: ''),
    historyModelObj: HistoryModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], historyItemList: [
      HistoryItemModel(
          month: "October",
          date: "30/10/2020",
          amount: "Amount",
          price: "480",
          unpaid: "Paid"),
      HistoryItemModel(
          month: "November",
          date: "30/11/2020",
          amount: "Amount",
          price: "480",
          unpaid: "Unpaid"),
      HistoryItemModel(
          month: "December",
          date: "30/12/2020",
          amount: "Amount",
          price: "480",
          unpaid: "Paid"),
      HistoryItemModel(
          month: "January",
          date: "30/01/2021",
          amount: "Amount",
          price: "480",
          unpaid: "Pending"),
      HistoryItemModel(
          month: "January",
          date: "30/01/2021",
          amount: "Amount",
          price: "480",
          unpaid: "Pending"),
      HistoryItemModel(
          month: "January",
          date: "30/01/2021",
          amount: "Amount",
          price: "480",
          unpaid: "Pending"),
      HistoryItemModel(
          month: "January",
          date: "30/01/2021",
          amount: "Amount",
          price: "480",
          unpaid: "Pending"),
      HistoryItemModel(
          month: "January",
          date: "30/01/2021",
          amount: "Amount",
          price: "480",
          unpaid: "Pending")
    ]),
  )),
);

/// A notifier that manages the state of a History according to the event that is dispatched to it.
class HistoryNotifier extends StateNotifier<HistoryState> {
  HistoryNotifier(HistoryState state) : super(state) {}
}

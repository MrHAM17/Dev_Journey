import 'package:the_5_19_banksy___digital_banking/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'history_item_model.dart';

class HistoryModel {
  List<SelectionPopupModel> dropdownItemList = [
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
  ];

  List<HistoryItemModel> historyItemList = [
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
  ];
}

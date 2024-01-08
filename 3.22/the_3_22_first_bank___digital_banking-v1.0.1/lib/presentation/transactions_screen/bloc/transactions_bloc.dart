import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/balance1_item_model.dart';
import '../models/arrow_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/transactions_screen/models/transactions_model.dart';
part 'transactions_event.dart';
part 'transactions_state.dart';

/// A bloc that manages the state of a Transactions according to the event that is dispatched to it.
class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc(TransactionsState initialState) : super(initialState) {
    on<TransactionsInitialEvent>(_onInitialize);
  }

  List<Balance1ItemModel> fillBalance1ItemList() {
    return [
      Balance1ItemModel(
          balance: "Balance",
          price: "5,756",
          cardholder: "CARD HOLDER",
          eddyCusuma: "Eddy Cusuma",
          validthru: "VALID THRU",
          oneThousandTwoHundredTwentyTwo: "12/22",
          thirtySevenMillionSevenHundred: "3778 **** **** 1234"),
      Balance1ItemModel(
          balance: "Balance",
          price: "5,756",
          cardholder: "CARD HOLDER",
          eddyCusuma: "Eddy Cusuma",
          validthru: "VALID THRU",
          oneThousandTwoHundredTwentyTwo: "12/22",
          thirtySevenMillionSevenHundred: "3778 **** **** 1234")
    ];
  }

  List<ArrowItemModel> fillArrowItemList() {
    return [
      ArrowItemModel(
          arrow: ImageConstant.imgArrowGreen600,
          freepikSales: "Freepik Sales",
          time: "25 Jan, 10.40 PM",
          price: "+750"),
      ArrowItemModel(
          arrow: ImageConstant.imgArrow,
          freepikSales: "Mobile Service",
          time: "20 Jan, 10.40 PM",
          price: "-150"),
      ArrowItemModel(
          arrow: ImageConstant.imgArrow,
          freepikSales: "Wilson",
          time: "15 Jan, 03.29 PM",
          price: "-1050"),
      ArrowItemModel(
          arrow: ImageConstant.imgArrowGreen600,
          freepikSales: "Emilly",
          time: "14 Jan, 10.40 PM",
          price: "+840")
    ];
  }

  _onInitialize(
    TransactionsInitialEvent event,
    Emitter<TransactionsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        transactionsModelObj: state.transactionsModelObj?.copyWith(
            balance1ItemList: fillBalance1ItemList(),
            arrowItemList: fillArrowItemList())));
  }
}

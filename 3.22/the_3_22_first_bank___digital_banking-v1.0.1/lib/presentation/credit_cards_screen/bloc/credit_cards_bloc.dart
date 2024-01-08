import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/balance2_item_model.dart';
import '../models/creditcards_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/credit_cards_screen/models/credit_cards_model.dart';
part 'credit_cards_event.dart';
part 'credit_cards_state.dart';

/// A bloc that manages the state of a CreditCards according to the event that is dispatched to it.
class CreditCardsBloc extends Bloc<CreditCardsEvent, CreditCardsState> {
  CreditCardsBloc(CreditCardsState initialState) : super(initialState) {
    on<CreditCardsInitialEvent>(_onInitialize);
  }

  List<Balance2ItemModel> fillBalance2ItemList() {
    return [
      Balance2ItemModel(
          balance: "Balance",
          fiveThousandSevenHundredFiftyS: "5,756",
          cardholder: "CARD HOLDER",
          eddyCusuma: "Eddy Cusuma",
          validthru: "VALID THRU",
          oneThousandTwoHundredTwentyTwo: "12/22",
          thirtySevenMillionSevenHundred: "3778 **** **** 1234")
    ];
  }

  List<CreditcardsItemModel> fillCreditcardsItemList() {
    return [
      CreditcardsItemModel(
          cardType: "Card Type",
          secondary: "Secondary",
          bank: "Bank",
          dBLBank: "DBL Bank",
          viewDetails: "View Details"),
      CreditcardsItemModel(
          cardType: "Card Type",
          secondary: "Secondary",
          bank: "Bank",
          dBLBank: "BRC Bank",
          viewDetails: "View Details"),
      CreditcardsItemModel(
          cardType: "Card Type",
          secondary: "Secondary",
          bank: "Bank",
          dBLBank: "ABM Bank",
          viewDetails: "View Details")
    ];
  }

  _onInitialize(
    CreditCardsInitialEvent event,
    Emitter<CreditCardsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      classicController: TextEditingController(),
      nameController: TextEditingController(),
      cardNumberController: TextEditingController(),
      expirationDateController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        creditCardsModelObj: state.creditCardsModelObj?.copyWith(
      balance2ItemList: fillBalance2ItemList(),
      creditcardsItemList: fillCreditcardsItemList(),
    )));
  }
}

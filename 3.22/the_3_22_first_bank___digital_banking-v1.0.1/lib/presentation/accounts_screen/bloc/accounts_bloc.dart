import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accounts_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/accounts_screen/models/accounts_model.dart';
part 'accounts_event.dart';
part 'accounts_state.dart';

/// A bloc that manages the state of a Accounts according to the event that is dispatched to it.
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc(AccountsState initialState) : super(initialState) {
    on<AccountsInitialEvent>(_onInitialize);
  }

  List<AccountsItemModel> fillAccountsItemList() {
    return [
      AccountsItemModel(
          moneyTagOne: ImageConstant.imgMoneyTag1,
          myBalance: "My Balance",
          price: "12,750"),
      AccountsItemModel(
          moneyTagOne: ImageConstant.imgGroup747,
          myBalance: "Income",
          price: "5,600"),
      AccountsItemModel(
          moneyTagOne: ImageConstant.img001Medical,
          myBalance: "Expense",
          price: "3,460"),
      AccountsItemModel(
          moneyTagOne: ImageConstant.img003Saving,
          myBalance: "Total Saving",
          price: "7,920")
    ];
  }

  _onInitialize(
    AccountsInitialEvent event,
    Emitter<AccountsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        accountsModelObj: state.accountsModelObj
            ?.copyWith(accountsItemList: fillAccountsItemList())));
    NavigatorService.pushNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}

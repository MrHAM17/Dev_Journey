import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/moneybagofdollars_item_model.dart';
import '../models/applestore_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/investments_screen/models/investments_model.dart';
part 'investments_event.dart';
part 'investments_state.dart';

/// A bloc that manages the state of a Investments according to the event that is dispatched to it.
class InvestmentsBloc extends Bloc<InvestmentsEvent, InvestmentsState> {
  InvestmentsBloc(InvestmentsState initialState) : super(initialState) {
    on<InvestmentsInitialEvent>(_onInitialize);
  }

  List<MoneybagofdollarsItemModel> fillMoneybagofdollarsItemList() {
    return [
      MoneybagofdollarsItemModel(
          moneyBagOfDollars: ImageConstant.imgMoneyBagOfDollars,
          totalInvestedAmount: "Total Invested Amount",
          price: "150,000"),
      MoneybagofdollarsItemModel(
          moneyBagOfDollars: ImageConstant.imgPieChart1,
          totalInvestedAmount: "Number of Investments",
          price: "1,250"),
      MoneybagofdollarsItemModel(
          moneyBagOfDollars: ImageConstant.imgRepeat1,
          totalInvestedAmount: "Rate of Return",
          price: "+5.80%")
    ];
  }

  List<ApplestoreItemModel> fillApplestoreItemList() {
    return [
      ApplestoreItemModel(
          image: ImageConstant.imgClose,
          appleStore: "Apple Store",
          ecommerceMarketplace: "E-commerce, Marketplace",
          sixteen: "+16%"),
      ApplestoreItemModel(
          image: ImageConstant.imgFloatingIcon,
          appleStore: "Tesla Motors",
          ecommerceMarketplace: "Electric Vehicles",
          sixteen: "+25%"),
      ApplestoreItemModel(
          appleStore: "Samsung Mobile",
          ecommerceMarketplace: "E-commerce, Marketplace",
          sixteen: "-4%")
    ];
  }

  _onInitialize(
    InvestmentsInitialEvent event,
    Emitter<InvestmentsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        investmentsModelObj: state.investmentsModelObj?.copyWith(
      moneybagofdollarsItemList: fillMoneybagofdollarsItemList(),
      applestoreItemList: fillApplestoreItemList(),
    )));
  }
}

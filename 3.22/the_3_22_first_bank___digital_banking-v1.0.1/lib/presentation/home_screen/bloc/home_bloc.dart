import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/balance_item_model.dart';
import '../models/liviabator_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  List<BalanceItemModel> fillBalanceItemList() {
    return [
      BalanceItemModel(
          balance: "Balance",
          price: "5,756",
          cardholder: "CARD HOLDER",
          eddyCusuma: "Eddy Cusuma",
          validthru: "VALID THRU",
          oneThousandTwoHundredTwentyTwo: "12/22",
          thirtySevenMillionSevenHundred: "3778 **** **** 1234")
    ];
  }

  List<LiviabatorItemModel> fillLiviabatorItemList() {
    return [
      LiviabatorItemModel(
          liviaBator: ImageConstant.imgEllipse18,
          liviaBator1: "Livia Bator",
          ceo: "CEO"),
      LiviabatorItemModel(
          liviaBator: ImageConstant.imgEllipse1850x50,
          liviaBator1: "Randy Press",
          ceo: "Director"),
      LiviabatorItemModel(
          liviaBator: ImageConstant.imgEllipse181,
          liviaBator1: "Workman",
          ceo: "Designer")
    ];
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            balanceItemList: fillBalanceItemList(),
            liviabatorItemList: fillLiviabatorItemList())));
    NavigatorService.pushNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}

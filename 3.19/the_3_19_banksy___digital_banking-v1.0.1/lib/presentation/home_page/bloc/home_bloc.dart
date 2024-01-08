import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/options_item_model.dart';
import 'package:the_3_19_banksy___digital_banking/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj
            ?.copyWith(optionsItemList: fillOptionsItemList())));
  }

  List<OptionsItemModel> fillOptionsItemList() {
    return [
      OptionsItemModel(
          favorite: ImageConstant.imgFavorite,
          sendMoney: "Send\nMoney",
          card: "To acc to acc"),
      OptionsItemModel(
          favorite: ImageConstant.imgFavoriteCyan400,
          sendMoney: "Receive\nMoney",
          card: "Manage Account"),
      OptionsItemModel(
          favorite: ImageConstant.imgRiExchangeDollarLine,
          sendMoney: "Money\nExchange",
          card: "Exchange Money"),
      OptionsItemModel(
          favorite: ImageConstant.imgMdiCreditCardClockOutline,
          sendMoney: "Pay\nBills",
          card: "Govt.paybills"),
      OptionsItemModel(
          favorite: ImageConstant.imgFrame11,
          sendMoney: "Bank To\nBank",
          card: "Send money"),
      OptionsItemModel(
          favorite: ImageConstant.imgBookmark,
          sendMoney: "Mobile\nPrepaid",
          card: "Recharge Mobile")
    ];
  }
}

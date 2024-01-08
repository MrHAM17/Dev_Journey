import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilelist1_item_model.dart';
import '../models/fortytwo_item_model.dart';
import '../models/thirtyseven_item_model.dart';
import 'package:the_3_19_banksy___digital_banking/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
part 'mobile_prepaid_one_event.dart';
part 'mobile_prepaid_one_state.dart';

/// A bloc that manages the state of a MobilePrepaidOne according to the event that is dispatched to it.
class MobilePrepaidOneBloc
    extends Bloc<MobilePrepaidOneEvent, MobilePrepaidOneState> {
  MobilePrepaidOneBloc(MobilePrepaidOneState initialState)
      : super(initialState) {
    on<MobilePrepaidOneInitialEvent>(_onInitialize);
  }

  List<Profilelist1ItemModel> fillProfilelist1ItemList() {
    return [
      Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse11),
      Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse9),
      Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse8),
      Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse7),
      Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse10)
    ];
  }

  List<FortytwoItemModel> fillFortytwoItemList() {
    return [
      FortytwoItemModel(
          angelinaDruff: ImageConstant.imgOval,
          jenningsChamplin: "Angelina Druff",
          jenningsChamplin1: "AC : 159-107-1396",
          angelinaDruff1: ImageConstant.imgCheckmarkTeal300),
      FortytwoItemModel(
          angelinaDruff: ImageConstant.imgOval48x48,
          jenningsChamplin: "Angelina Lan",
          jenningsChamplin1: "AC : 159-107-1396",
          angelinaDruff1: ImageConstant.imgCheckmarkGray400)
    ];
  }

  List<ThirtysevenItemModel> fillThirtysevenItemList() {
    return [
      ThirtysevenItemModel(
          belgeman: ImageConstant.imgOval1,
          jenningsChamplin: "Belgeman",
          jenningsChamplin1: "AC : 159-107-1396"),
      ThirtysevenItemModel(
          belgeman: ImageConstant.imgOval2,
          jenningsChamplin: "Brusly",
          jenningsChamplin1: "AC : 159-107-1396")
    ];
  }

  _onInitialize(
    MobilePrepaidOneInitialEvent event,
    Emitter<MobilePrepaidOneState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        mobilePrepaidOneModelObj: state.mobilePrepaidOneModelObj?.copyWith(
            profilelist1ItemList: fillProfilelist1ItemList(),
            fortytwoItemList: fillFortytwoItemList(),
            thirtysevenItemList: fillThirtysevenItemList())));
    NavigatorService.pushNamed(
      AppRoutes.enterMoneyScreen,
    );
  }
}

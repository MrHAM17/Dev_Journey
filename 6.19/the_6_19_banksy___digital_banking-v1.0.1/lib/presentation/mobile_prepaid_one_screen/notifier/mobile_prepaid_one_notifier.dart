import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilelist1_item_model.dart';
import '../models/fortytwo_item_model.dart';
import '../models/thirtyseven_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
part 'mobile_prepaid_one_state.dart';

final mobilePrepaidOneNotifier = StateNotifierProvider<MobilePrepaidOneNotifier,
        MobilePrepaidOneState>(
    (ref) => MobilePrepaidOneNotifier(MobilePrepaidOneState(
        nameController: TextEditingController(),
        mobilePrepaidOneModelObj: MobilePrepaidOneModel(profilelist1ItemList: [
          Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse11),
          Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse9),
          Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse8),
          Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse7),
          Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse10)
        ], fortytwoItemList: [
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
        ], thirtysevenItemList: [
          ThirtysevenItemModel(
              belgeman: ImageConstant.imgOval1,
              jenningsChamplin: "Belgeman",
              jenningsChamplin1: "AC : 159-107-1396"),
          ThirtysevenItemModel(
              belgeman: ImageConstant.imgOval2,
              jenningsChamplin: "Brusly",
              jenningsChamplin1: "AC : 159-107-1396")
        ]))));

/// A notifier that manages the state of a MobilePrepaidOne according to the event that is dispatched to it.
class MobilePrepaidOneNotifier extends StateNotifier<MobilePrepaidOneState> {
  MobilePrepaidOneNotifier(MobilePrepaidOneState state) : super(state);
}

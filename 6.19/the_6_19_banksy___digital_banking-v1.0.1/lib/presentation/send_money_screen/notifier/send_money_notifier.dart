import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilelist_item_model.dart';
import '../models/nineteen_item_model.dart';
import '../models/twentytwo_item_model.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/send_money_screen/models/send_money_model.dart';
part 'send_money_state.dart';

final sendMoneyNotifier =
    StateNotifierProvider<SendMoneyNotifier, SendMoneyState>(
        (ref) => SendMoneyNotifier(SendMoneyState(
                sendMoneyModelObj: SendMoneyModel(profilelistItemList: [
              ProfilelistItemModel(ellipse: ImageConstant.imgEllipse11),
              ProfilelistItemModel(ellipse: ImageConstant.imgEllipse9),
              ProfilelistItemModel(ellipse: ImageConstant.imgEllipse8),
              ProfilelistItemModel(ellipse: ImageConstant.imgEllipse7),
              ProfilelistItemModel(ellipse: ImageConstant.imgEllipse10)
            ], nineteenItemList: [
              NineteenItemModel(
                  angelinaDruff: ImageConstant.imgOval,
                  jenningsChamplin: "Angelina Druff",
                  jenningsChamplin1: "AC : 159-107-1396",
                  angelinaDruff1: ImageConstant.imgCheckmarkTeal300),
              NineteenItemModel(
                  angelinaDruff: ImageConstant.imgOval48x48,
                  jenningsChamplin: "Angelina Lan",
                  jenningsChamplin1: "AC : 159-107-1396",
                  angelinaDruff1: ImageConstant.imgCheckmarkGray400)
            ], twentytwoItemList: [
              TwentytwoItemModel(
                  belgeman: ImageConstant.imgOval1,
                  jenningsChamplin: "Belgeman",
                  jenningsChamplin1: "AC : 159-107-1396"),
              TwentytwoItemModel(
                  belgeman: ImageConstant.imgOval2,
                  jenningsChamplin: "Brusly",
                  jenningsChamplin1: "AC : 159-107-1396"),
              TwentytwoItemModel(
                  belgeman: ImageConstant.imgOval3,
                  jenningsChamplin: "Baminu",
                  jenningsChamplin1: "AC : 159-107-1396")
            ]))));

/// A notifier that manages the state of a SendMoney according to the event that is dispatched to it.
class SendMoneyNotifier extends StateNotifier<SendMoneyState> {
  SendMoneyNotifier(SendMoneyState state) : super(state);
}

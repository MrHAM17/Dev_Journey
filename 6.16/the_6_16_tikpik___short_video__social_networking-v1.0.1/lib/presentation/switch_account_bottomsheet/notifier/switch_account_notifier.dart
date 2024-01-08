import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/switchaccount_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/switch_account_bottomsheet/models/switch_account_model.dart';
part 'switch_account_state.dart';

final switchAccountNotifier =
    StateNotifierProvider<SwitchAccountNotifier, SwitchAccountState>(
  (ref) => SwitchAccountNotifier(SwitchAccountState(
    switchAccountModelObj: SwitchAccountModel(switchaccountItemList: [
      SwitchaccountItemModel(
          andrewAinsley: ImageConstant.imgEllipse30,
          name: "Andrew Ainsley",
          information: "andrew_aisnley",
          andrewAinsley1: ImageConstant.imgCategoriesCheck)
    ]),
  )),
);

/// A notifier that manages the state of a SwitchAccount according to the event that is dispatched to it.
class SwitchAccountNotifier extends StateNotifier<SwitchAccountState> {
  SwitchAccountNotifier(SwitchAccountState state) : super(state) {}
}

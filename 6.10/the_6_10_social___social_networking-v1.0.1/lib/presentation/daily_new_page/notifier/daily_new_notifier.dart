import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profiles1_item_model.dart';
import '../models/forty_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/daily_new_page/models/daily_new_model.dart';
part 'daily_new_state.dart';

final dailyNewNotifier = StateNotifierProvider<DailyNewNotifier, DailyNewState>(
  (ref) => DailyNewNotifier(DailyNewState(
    dailyNewModelObj: DailyNewModel(profiles1ItemList: [
      Profiles1ItemModel(
          nineteen: ImageConstant.img19, agnessMonica: "Agness Monica"),
      Profiles1ItemModel(nineteen: ImageConstant.img19179x147),
      Profiles1ItemModel(
          nineteen: ImageConstant.img191, agnessMonica: "Windy Wandah")
    ], fortyItemList: [
      FortyItemModel(forty: ImageConstant.img40),
      FortyItemModel(forty: ImageConstant.img34)
    ]),
  )),
);

/// A notifier that manages the state of a DailyNew according to the event that is dispatched to it.
class DailyNewNotifier extends StateNotifier<DailyNewState> {
  DailyNewNotifier(DailyNewState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sixtyseven_item_model.dart';
import '../models/eightytwo_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
            homeModelObj: HomeModel(sixtysevenItemList: [
          SixtysevenItemModel(close: ImageConstant.imgClose)
        ], eightytwoItemList: [
          EightytwoItemModel(
              name: "Dustin Houston",
              time: "5 min ago",
              copy: "Whether its a driving tour 😂",
              label: "326",
              label1: "148",
              label2: "Share"),
          EightytwoItemModel(copy: "Whether its a driving tour 😂")
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}

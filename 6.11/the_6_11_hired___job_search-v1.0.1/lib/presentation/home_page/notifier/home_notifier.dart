import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import '../models/eightyeight_item_model.dart';
import '../models/fulltime1_item_model.dart';
import '../models/fulltime3_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    searchController: TextEditingController(),
    homeModelObj: HomeModel(frameItemList: [
      FrameItemModel(
          seniorUIUXDesigner: "Senior UI/UX Designer",
          shopee: "Shopee",
          jakartaIndonesia: "Jakarta, Indonesia (Remote)",
          price: "1100 - 12.000/Month"),
      FrameItemModel(
          seniorUIUXDesigner: "Senior UI/UX Designer",
          shopee: "Shopee",
          jakartaIndonesia: "Jakarta, Indonesia (Remote)",
          price: "1100 - 12.000/Month")
    ], eightyeightItemList: [
      EightyeightItemModel(
          digitalMarketing: "Digital Marketing",
          motorola: "Motorola",
          price: "560 - 12.000/Month")
    ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Fulltime1ItemModel> newList =
        List<Fulltime1ItemModel>.from(state.homeModelObj!.fulltime1ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(fulltime1ItemList: newList));
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    List<Fulltime3ItemModel> newList =
        List<Fulltime3ItemModel>.from(state.homeModelObj!.fulltime3ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(fulltime3ItemList: newList));
  }
}

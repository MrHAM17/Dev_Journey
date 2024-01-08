import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/horizontal_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/horizontal_screen/models/horizontal_model.dart';
part 'horizontal_state.dart';

final horizontalNotifier =
    StateNotifierProvider<HorizontalNotifier, HorizontalState>(
  (ref) => HorizontalNotifier(HorizontalState(
    horizontalModelObj: HorizontalModel(horizontalItemList: [
      HorizontalItemModel(
          image: ImageConstant.imgShape140x126,
          baliBeachviewVilla: "Bali Beachview Villa",
          image1: ImageConstant.imgSignalYellow700,
          text: "4.2 ",
          baliIndonesia: "Bali, Indonesia",
          price: " 420",
          month: "/month"),
      HorizontalItemModel(
          image: ImageConstant.imgShape20,
          baliBeachviewVilla: "Wings Tower",
          image1: ImageConstant.imgSignalYellow7009x9,
          text: "4.9 ",
          baliIndonesia: "Jakarta, Indonesia",
          price: " 220",
          month: "/month"),
      HorizontalItemModel(
          image: ImageConstant.imgShape31,
          baliBeachviewVilla: "Wayside Modern House",
          image1: ImageConstant.imgSignalYellow7009x9,
          text: "4.4",
          baliIndonesia: "Semarang, Indonesia",
          price: " 220",
          month: "/month")
    ]),
  )),
);

/// A notifier that manages the state of a Horizontal according to the event that is dispatched to it.
class HorizontalNotifier extends StateNotifier<HorizontalState> {
  HorizontalNotifier(HorizontalState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import '../models/thirtytwo_item_model.dart';
import '../models/mainlanding_item_model.dart';
import '../models/price_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/main_landing_screen/models/main_landing_model.dart';
part 'main_landing_state.dart';

final mainLandingNotifier =
    StateNotifierProvider<MainLandingNotifier, MainLandingState>(
  (ref) => MainLandingNotifier(MainLandingState(
    emailController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    selectedDropDownValue1: SelectionPopupModel(title: ''),
    selectedDropDownValue2: SelectionPopupModel(title: ''),
    mainLandingModelObj: MainLandingModel(frameItemList: [
      FrameItemModel(
          oliveplaindress: ImageConstant.imgImage,
          womenBlueSkinny: "Olive plain dress",
          price: " 13.99"),
      FrameItemModel(
          oliveplaindress: ImageConstant.imgImage236x171,
          womenBlueSkinny: "Shoes on heels",
          price: " 28.99"),
      FrameItemModel(
          oliveplaindress: ImageConstant.imgImage,
          womenBlueSkinny: "Olive plain dress",
          price: " 20.99")
    ], thirtytwoItemList: [
      ThirtytwoItemModel(
          outerwear: ImageConstant.imgRectangle7,
          outerwear1: "Outerwear",
          raincoatsSweaters: "Raincoats, sweaters, etc."),
      ThirtytwoItemModel(
          outerwear: ImageConstant.imgRectangle7386x358,
          outerwear1: "Leather shoes",
          raincoatsSweaters: "Shoes, sandals, etc."),
      ThirtytwoItemModel(
          outerwear: ImageConstant.imgRectangle8,
          outerwear1: "Light dresses",
          raincoatsSweaters: "Evening, casual, home")
    ], mainlandingItemList: [
      MainlandingItemModel(image: ImageConstant.imgImage15),
      MainlandingItemModel(image: ImageConstant.imgImage16),
      MainlandingItemModel(image: ImageConstant.imgImage17),
      MainlandingItemModel(image: ImageConstant.imgImage18),
      MainlandingItemModel(image: ImageConstant.imgImage19),
      MainlandingItemModel(image: ImageConstant.imgImage20)
    ], dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList1: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList2: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], priceItemList: [
      PriceItemModel(
          circleImage: ImageConstant.imgImage56x56,
          price: "43.90",
          cottonBlackDress: "Cotton black dress"),
      PriceItemModel(
          circleImage: ImageConstant.imgImage1,
          price: "12.50",
          cottonBlackDress: "Saddle shoulder bag with hardware "),
      PriceItemModel(
          circleImage: ImageConstant.imgImage2,
          price: "99.30",
          cottonBlackDress: "Leather shoes")
    ]),
  )),
);

/// A notifier that manages the state of a MainLanding according to the event that is dispatched to it.
class MainLandingNotifier extends StateNotifier<MainLandingState> {
  MainLandingNotifier(MainLandingState state) : super(state) {}
}

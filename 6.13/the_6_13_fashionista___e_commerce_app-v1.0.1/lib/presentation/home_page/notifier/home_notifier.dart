import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame2_item_model.dart';
import '../models/frame3_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
            homeModelObj: HomeModel(frame2ItemList: [
          Frame2ItemModel(
              casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg,
              casualJeansShoes1: "Casual Jeans Shoes"),
          Frame2ItemModel(
              casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg235x164,
              casualJeansShoes1: "Casual Jeans Shoes"),
          Frame2ItemModel(
              casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg1,
              casualJeansShoes1: "Casual Jeans Shoes")
        ], frame3ItemList: [
          Frame3ItemModel(
              blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2,
              casualJeansShoes: "Black Jacket"),
          Frame3ItemModel(
              blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg3,
              casualJeansShoes: "Casual Jeans Shoes"),
          Frame3ItemModel(
              blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2,
              casualJeansShoes: "Black Jacket")
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}

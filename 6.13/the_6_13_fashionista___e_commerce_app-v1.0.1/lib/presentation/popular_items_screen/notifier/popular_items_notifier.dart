import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/popularitems_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/popular_items_screen/models/popular_items_model.dart';
part 'popular_items_state.dart';

final popularItemsNotifier =
    StateNotifierProvider<PopularItemsNotifier, PopularItemsState>(
        (ref) => PopularItemsNotifier(PopularItemsState(
                popularItemsModelObj: PopularItemsModel(popularitemsItemList: [
              PopularitemsItemModel(
                  blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg4,
                  casualJeansShoes: "Black Jacket"),
              PopularitemsItemModel(
                  blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg5,
                  casualJeansShoes: "Black Jacket"),
              PopularitemsItemModel(
                  blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg6,
                  casualJeansShoes: "Black Jacket"),
              PopularitemsItemModel(
                  blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg7,
                  casualJeansShoes: "Black Jacket")
            ]))));

/// A notifier that manages the state of a PopularItems according to the event that is dispatched to it.
class PopularItemsNotifier extends StateNotifier<PopularItemsState> {
  PopularItemsNotifier(PopularItemsState state) : super(state);
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favorite_item_model.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/favorite_screen/models/favorite_model.dart';
part 'favorite_state.dart';

final favoriteNotifier = StateNotifierProvider<FavoriteNotifier, FavoriteState>(
    (ref) => FavoriteNotifier(FavoriteState(
            favoriteModelObj: FavoriteModel(favoriteItemList: [
          FavoriteItemModel(
              boxTee: ImageConstant.imgRectangle12, boxTee1: "Box Tee"),
          FavoriteItemModel(
              boxTee: ImageConstant.imgRectangle12180x175,
              boxTee1: "Boyfriend Tee"),
          FavoriteItemModel(
              boxTee: ImageConstant.imgRectangle121, boxTee1: "Box Tee"),
          FavoriteItemModel(
              boxTee: ImageConstant.imgRectangle122, boxTee1: "Boyfriend Tee")
        ]))));

/// A notifier that manages the state of a Favorite according to the event that is dispatched to it.
class FavoriteNotifier extends StateNotifier<FavoriteState> {
  FavoriteNotifier(FavoriteState state) : super(state);
}

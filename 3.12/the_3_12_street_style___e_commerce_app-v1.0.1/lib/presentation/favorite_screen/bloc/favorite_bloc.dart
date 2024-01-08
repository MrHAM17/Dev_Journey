import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favorite_item_model.dart';
import 'package:the_3_12_street_style___e_commerce_app/presentation/favorite_screen/models/favorite_model.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

/// A bloc that manages the state of a Favorite according to the event that is dispatched to it.
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc(FavoriteState initialState) : super(initialState) {
    on<FavoriteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoriteInitialEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(state.copyWith(
        favoriteModelObj: state.favoriteModelObj
            ?.copyWith(favoriteItemList: fillFavoriteItemList())));
    NavigatorService.pushNamed(
      AppRoutes.productScreen,
    );
  }

  List<FavoriteItemModel> fillFavoriteItemList() {
    return [
      FavoriteItemModel(
          boxTee: ImageConstant.imgRectangle12, boxTee1: "Box Tee"),
      FavoriteItemModel(
          boxTee: ImageConstant.imgRectangle12180x175,
          boxTee1: "Boyfriend Tee"),
      FavoriteItemModel(
          boxTee: ImageConstant.imgRectangle121, boxTee1: "Box Tee"),
      FavoriteItemModel(
          boxTee: ImageConstant.imgRectangle122, boxTee1: "Boyfriend Tee")
    ];
  }
}

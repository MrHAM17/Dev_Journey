import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trending_item_model.dart';
import '../models/trending1_item_model.dart';
import '../models/trending2_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_ten_screen/models/explore_ten_model.dart';
part 'explore_ten_state.dart';

final exploreTenNotifier =
    StateNotifierProvider<ExploreTenNotifier, ExploreTenState>(
        (ref) => ExploreTenNotifier(ExploreTenState(
                exploreTenModelObj: ExploreTenModel(trendingItemList: [
              TrendingItemModel(
                  darkPhoenix: ImageConstant.imgThumbnailImage12,
                  title: "Dark Phoenix",
                  subLabel: "Sub Label",
                  star: "(4.5)"),
              TrendingItemModel(
                  darkPhoenix: ImageConstant.imgThumbnailImage160x312,
                  title: "Label")
            ], trending1ItemList: [
              Trending1ItemModel(
                  darkPhoenix: ImageConstant.imgThumbnailImage140x90,
                  title: "Dark Phoenix",
                  subLabel: "Sub Label",
                  star: "(4.5)"),
              Trending1ItemModel(
                  darkPhoenix: ImageConstant.imgThumbnailImage160x312,
                  title: "Label")
            ], trending2ItemList: [
              Trending2ItemModel(
                  darkPhoenix: ImageConstant.imgThumbnailImage31,
                  title: "Dark Phoenix",
                  subLabel: "Sub Label",
                  star: "(4.5)"),
              Trending2ItemModel(
                  darkPhoenix: ImageConstant.imgThumbnailImage160x312,
                  title: "Label")
            ]))));

/// A notifier that manages the state of a ExploreTen according to the event that is dispatched to it.
class ExploreTenNotifier extends StateNotifier<ExploreTenState> {
  ExploreTenNotifier(ExploreTenState state) : super(state);
}

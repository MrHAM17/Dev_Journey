import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayouthorizontal3_item_model.dart';
import '../models/autolayouthorizontal4_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/trending_hashtag_page/models/trending_hashtag_model.dart';
part 'trending_hashtag_state.dart';

final trendingHashtagNotifier =
    StateNotifierProvider<TrendingHashtagNotifier, TrendingHashtagState>(
  (ref) => TrendingHashtagNotifier(TrendingHashtagState(
    trendingHashtagModelObj:
        TrendingHashtagModel(autolayouthorizontal3ItemList: [
      Autolayouthorizontal3ItemModel(
          k: ImageConstant.imgImage31,
          overflowMenu: ImageConstant.imgOverflowMenuPrimary16x16,
          k1: "728.5K"),
      Autolayouthorizontal3ItemModel(k: ImageConstant.imgImage32, k1: "837.9K"),
      Autolayouthorizontal3ItemModel(k: ImageConstant.imgImage33, k1: "736.2K")
    ], autolayouthorizontal4ItemList: [
      Autolayouthorizontal4ItemModel(
          k: ImageConstant.imgImage19,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "728.5K"),
      Autolayouthorizontal4ItemModel(k: ImageConstant.imgImage20, k2: "837.9K"),
      Autolayouthorizontal4ItemModel(k: ImageConstant.imgImage21, k2: "736.2K")
    ]),
  )),
);

/// A notifier that manages the state of a TrendingHashtag according to the event that is dispatched to it.
class TrendingHashtagNotifier extends StateNotifier<TrendingHashtagState> {
  TrendingHashtagNotifier(TrendingHashtagState state) : super(state) {}
}

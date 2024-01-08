import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayouthorizontal1_item_model.dart';
import '../models/autolayouthorizontal2_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/trending_sounds_page/models/trending_sounds_model.dart';
part 'trending_sounds_state.dart';

final trendingSoundsNotifier =
    StateNotifierProvider<TrendingSoundsNotifier, TrendingSoundsState>(
  (ref) => TrendingSoundsNotifier(TrendingSoundsState(
    trendingSoundsModelObj: TrendingSoundsModel(autolayouthorizontal1ItemList: [
      Autolayouthorizontal1ItemModel(k: ImageConstant.imgImage19, k1: "728.5K"),
      Autolayouthorizontal1ItemModel(k: ImageConstant.imgImage20, k1: "837.9K"),
      Autolayouthorizontal1ItemModel(k: ImageConstant.imgImage21, k1: "736.2K")
    ], autolayouthorizontal2ItemList: [
      Autolayouthorizontal2ItemModel(
          k: ImageConstant.imgImage22,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "728.5K"),
      Autolayouthorizontal2ItemModel(k: ImageConstant.imgImage23, k2: "837.9K"),
      Autolayouthorizontal2ItemModel(
          k: ImageConstant.imgImage24,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "736.2K")
    ]),
  )),
);

/// A notifier that manages the state of a TrendingSounds according to the event that is dispatched to it.
class TrendingSoundsNotifier extends StateNotifier<TrendingSoundsState> {
  TrendingSoundsNotifier(TrendingSoundsState state) : super(state) {}
}

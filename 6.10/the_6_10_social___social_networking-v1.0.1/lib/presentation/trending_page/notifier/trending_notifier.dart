import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trending_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/trending_page/models/trending_model.dart';
part 'trending_state.dart';

final trendingNotifier = StateNotifierProvider<TrendingNotifier, TrendingState>(
  (ref) => TrendingNotifier(TrendingState(
    trendingModelObj: TrendingModel(trendingItemList: [
      TrendingItemModel(
          image: ImageConstant.img40221x382,
          rickOnad: "Rick Onad",
          time: "40 min ago",
          thisIsTheMoment:
              "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
          huge: "#huge",
          fotography: "#fotography",
          nature: "#nature"),
      TrendingItemModel(
          image: ImageConstant.img401,
          rickOnad: "Rick Onad",
          time: "40 min ago",
          thisIsTheMoment:
              "This is the moment where i take a photo of a couple hugging in a beautiful rice field.",
          huge: "#huge",
          fotography: "#fotography",
          nature: "#nature")
    ]),
  )),
);

/// A notifier that manages the state of a Trending according to the event that is dispatched to it.
class TrendingNotifier extends StateNotifier<TrendingState> {
  TrendingNotifier(TrendingState state) : super(state) {}
}

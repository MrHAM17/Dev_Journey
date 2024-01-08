import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget1_item_model.dart';
import '../models/frame1_item_model.dart';
import '../models/frame2_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/models/home_recently_watched_model.dart';
part 'home_recently_watched_state.dart';

final homeRecentlyWatchedNotifier = StateNotifierProvider<
    HomeRecentlyWatchedNotifier, HomeRecentlyWatchedState>(
  (ref) => HomeRecentlyWatchedNotifier(HomeRecentlyWatchedState(
    sliderIndex: 0,
    homeRecentlyWatchedModelObj: HomeRecentlyWatchedModel(
        widget1ItemList: List.generate(1, (index) => Widget1ItemModel()),
        frame1ItemList: [
          Frame1ItemModel(
              image: ImageConstant.imgRectangle6,
              doctorStrange: "Doctor strange :  In The Multiverse of Madness",
              fifteenThousandThirtyFive: "1:50:35",
              zipcode: "2021",
              lightBulb: ImageConstant.imgRectangle9),
          Frame1ItemModel(
              image: ImageConstant.imgRectangle686x214,
              doctorStrange: "Thor: Ragnarok",
              fifteenThousandThirtyFive: "1:50:35",
              zipcode: "2021")
        ],
        frame2ItemList: [
          Frame2ItemModel(aladdin: ImageConstant.imgAladdin),
          Frame2ItemModel(aladdin: ImageConstant.imgAladdin178x124),
          Frame2ItemModel(aladdin: ImageConstant.imgAladdin1)
        ]),
  )),
);

/// A notifier that manages the state of a HomeRecentlyWatched according to the event that is dispatched to it.
class HomeRecentlyWatchedNotifier
    extends StateNotifier<HomeRecentlyWatchedState> {
  HomeRecentlyWatchedNotifier(HomeRecentlyWatchedState state) : super(state) {}
}

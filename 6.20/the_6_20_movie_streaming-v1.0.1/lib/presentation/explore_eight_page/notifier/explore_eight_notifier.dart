import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials7_item_model.dart';
import '../models/exploreeight_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_eight_page/models/explore_eight_model.dart';
part 'explore_eight_state.dart';

final exploreEightNotifier =
    StateNotifierProvider<ExploreEightNotifier, ExploreEightState>(
        (ref) => ExploreEightNotifier(ExploreEightState(
                exploreEightModelObj: ExploreEightModel(specials7ItemList: [
              Specials7ItemModel(
                  drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
              Specials7ItemModel(
                  drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
              Specials7ItemModel(
                  drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
              Specials7ItemModel(
                  drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
            ], exploreeightItemList: [
              ExploreeightItemModel(
                  io: ImageConstant.imgThumbnailImage180x120,
                  title: "IO",
                  title1: "No Christmas For You"),
              ExploreeightItemModel(
                  io: ImageConstant.imgThumbnailImage7,
                  title: "I Kill Giants",
                  title1: "As long we fight back, we have…"),
              ExploreeightItemModel(
                  io: ImageConstant.imgThumbnailImage9,
                  title: "Angel has Fallen",
                  title1: "Sub-Title"),
              ExploreeightItemModel(
                  io: ImageConstant.imgThumbnailImage12,
                  title: "Title",
                  title1: "As long we fight …")
            ]))));

/// A notifier that manages the state of a ExploreEight according to the event that is dispatched to it.
class ExploreEightNotifier extends StateNotifier<ExploreEightState> {
  ExploreEightNotifier(ExploreEightState state) : super(state);
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials8_item_model.dart';
import '../models/explorenine_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_nine_screen/models/explore_nine_model.dart';
part 'explore_nine_state.dart';

final exploreNineNotifier =
    StateNotifierProvider<ExploreNineNotifier, ExploreNineState>(
        (ref) => ExploreNineNotifier(ExploreNineState(
            searchController: TextEditingController(),
            exploreNineModelObj: ExploreNineModel(specials8ItemList: [
              Specials8ItemModel(
                  drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
              Specials8ItemModel(
                  drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
              Specials8ItemModel(
                  drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
              Specials8ItemModel(
                  drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
            ], explorenineItemList: [
              ExplorenineItemModel(
                  io: ImageConstant.imgThumbnailImage180x120,
                  title: "IO",
                  title1: "No Christmas For You"),
              ExplorenineItemModel(
                  io: ImageConstant.imgThumbnailImage7,
                  title: "I Kill Giants",
                  title1: "As long we fight back, we have…"),
              ExplorenineItemModel(
                  io: ImageConstant.imgThumbnailImage9,
                  title: "Angel has Fallen",
                  title1: "Sub-Title"),
              ExplorenineItemModel(
                  io: ImageConstant.imgThumbnailImage12,
                  title: "Title",
                  title1: "As long we fight …")
            ]))));

/// A notifier that manages the state of a ExploreNine according to the event that is dispatched to it.
class ExploreNineNotifier extends StateNotifier<ExploreNineState> {
  ExploreNineNotifier(ExploreNineState state) : super(state);
}

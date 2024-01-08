import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials7_item_model.dart';
import '../models/exploreeight_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/explore_eight_page/models/explore_eight_model.dart';
part 'explore_eight_event.dart';
part 'explore_eight_state.dart';

/// A bloc that manages the state of a ExploreEight according to the event that is dispatched to it.
class ExploreEightBloc extends Bloc<ExploreEightEvent, ExploreEightState> {
  ExploreEightBloc(ExploreEightState initialState) : super(initialState) {
    on<ExploreEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreEightInitialEvent event,
    Emitter<ExploreEightState> emit,
  ) async {
    emit(state.copyWith(
        exploreEightModelObj: state.exploreEightModelObj?.copyWith(
            specials7ItemList: fillSpecials7ItemList(),
            exploreeightItemList: fillExploreeightItemList())));
    NavigatorService.pushNamed(
      AppRoutes.exploreNineScreen,
    );
  }

  List<Specials7ItemModel> fillSpecials7ItemList() {
    return [
      Specials7ItemModel(
          drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
      Specials7ItemModel(
          drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
      Specials7ItemModel(
          drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
      Specials7ItemModel(
          drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
    ];
  }

  List<ExploreeightItemModel> fillExploreeightItemList() {
    return [
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
    ];
  }
}

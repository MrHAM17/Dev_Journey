import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials8_item_model.dart';
import '../models/explorenine_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/explore_nine_screen/models/explore_nine_model.dart';
part 'explore_nine_event.dart';
part 'explore_nine_state.dart';

/// A bloc that manages the state of a ExploreNine according to the event that is dispatched to it.
class ExploreNineBloc extends Bloc<ExploreNineEvent, ExploreNineState> {
  ExploreNineBloc(ExploreNineState initialState) : super(initialState) {
    on<ExploreNineInitialEvent>(_onInitialize);
  }

  List<Specials8ItemModel> fillSpecials8ItemList() {
    return [
      Specials8ItemModel(
          drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
      Specials8ItemModel(
          drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
      Specials8ItemModel(
          drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
      Specials8ItemModel(
          drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
    ];
  }

  List<ExplorenineItemModel> fillExplorenineItemList() {
    return [
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
    ];
  }

  _onInitialize(
    ExploreNineInitialEvent event,
    Emitter<ExploreNineState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreNineModelObj: state.exploreNineModelObj?.copyWith(
            specials8ItemList: fillSpecials8ItemList(),
            explorenineItemList: fillExplorenineItemList())));
  }
}

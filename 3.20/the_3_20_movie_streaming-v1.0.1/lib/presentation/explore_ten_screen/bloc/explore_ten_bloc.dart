import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trending_item_model.dart';
import '../models/trending1_item_model.dart';
import '../models/trending2_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/explore_ten_screen/models/explore_ten_model.dart';
part 'explore_ten_event.dart';
part 'explore_ten_state.dart';

/// A bloc that manages the state of a ExploreTen according to the event that is dispatched to it.
class ExploreTenBloc extends Bloc<ExploreTenEvent, ExploreTenState> {
  ExploreTenBloc(ExploreTenState initialState) : super(initialState) {
    on<ExploreTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreTenInitialEvent event,
    Emitter<ExploreTenState> emit,
  ) async {
    emit(state.copyWith(
        exploreTenModelObj: state.exploreTenModelObj?.copyWith(
            trendingItemList: fillTrendingItemList(),
            trending1ItemList: fillTrending1ItemList(),
            trending2ItemList: fillTrending2ItemList())));
  }

  List<TrendingItemModel> fillTrendingItemList() {
    return [
      TrendingItemModel(
          darkPhoenix: ImageConstant.imgThumbnailImage12,
          title: "Dark Phoenix",
          subLabel: "Sub Label",
          star: "(4.5)"),
      TrendingItemModel(
          darkPhoenix: ImageConstant.imgThumbnailImage160x312, title: "Label")
    ];
  }

  List<Trending1ItemModel> fillTrending1ItemList() {
    return [
      Trending1ItemModel(
          darkPhoenix: ImageConstant.imgThumbnailImage140x90,
          title: "Dark Phoenix",
          subLabel: "Sub Label",
          star: "(4.5)"),
      Trending1ItemModel(
          darkPhoenix: ImageConstant.imgThumbnailImage160x312, title: "Label")
    ];
  }

  List<Trending2ItemModel> fillTrending2ItemList() {
    return [
      Trending2ItemModel(
          darkPhoenix: ImageConstant.imgThumbnailImage31,
          title: "Dark Phoenix",
          subLabel: "Sub Label",
          star: "(4.5)"),
      Trending2ItemModel(
          darkPhoenix: ImageConstant.imgThumbnailImage160x312, title: "Label")
    ];
  }
}

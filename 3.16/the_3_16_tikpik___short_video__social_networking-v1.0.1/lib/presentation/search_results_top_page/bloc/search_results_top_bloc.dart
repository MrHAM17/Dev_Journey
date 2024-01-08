import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/follow_item_model.dart';
import '../models/autolayouthorizontal_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_top_page/models/search_results_top_model.dart';
part 'search_results_top_event.dart';
part 'search_results_top_state.dart';

/// A bloc that manages the state of a SearchResultsTop according to the event that is dispatched to it.
class SearchResultsTopBloc
    extends Bloc<SearchResultsTopEvent, SearchResultsTopState> {
  SearchResultsTopBloc(SearchResultsTopState initialState)
      : super(initialState) {
    on<SearchResultsTopInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsTopInitialEvent event,
    Emitter<SearchResultsTopState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsTopModelObj: state.searchResultsTopModelObj?.copyWith(
      followItemList: fillFollowItemList(),
      autolayouthorizontalItemList: fillAutolayouthorizontalItemList(),
    )));
  }

  List<FollowItemModel> fillFollowItemList() {
    return [
      FollowItemModel(
          arianaGrande: ImageConstant.imgEllipse8,
          arianaGrande1: "Ariana Grande",
          price: "arianagrande | 27.3M followers"),
      FollowItemModel(
          arianaGrande: ImageConstant.imgEllipse9,
          arianaGrande1: "Ariana Cooper",
          price: "arianacooper | 24.5M followers")
    ];
  }

  List<AutolayouthorizontalItemModel> fillAutolayouthorizontalItemList() {
    return [
      AutolayouthorizontalItemModel(
          k: ImageConstant.imgImage5,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "367.5K"),
      AutolayouthorizontalItemModel(k: ImageConstant.imgImage10, k2: "837.9K"),
      AutolayouthorizontalItemModel(k: ImageConstant.imgImage7, k2: "736.2K")
    ];
  }
}

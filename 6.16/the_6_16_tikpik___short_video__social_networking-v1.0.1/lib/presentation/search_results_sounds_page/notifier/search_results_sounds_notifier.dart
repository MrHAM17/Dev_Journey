import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresultssounds_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/search_results_sounds_page/models/search_results_sounds_model.dart';
part 'search_results_sounds_state.dart';

final searchResultsSoundsNotifier = StateNotifierProvider<
    SearchResultsSoundsNotifier, SearchResultsSoundsState>(
  (ref) => SearchResultsSoundsNotifier(SearchResultsSoundsState(
    searchResultsSoundsModelObj:
        SearchResultsSoundsModel(searchresultssoundsItemList: [
      SearchresultssoundsItemModel(
          k: ImageConstant.imgImage80x80,
          soundsTitle: "Side to Side",
          singer: "Ariana Grande",
          time: "01:00",
          total: "938.6K"),
      SearchresultssoundsItemModel(
          k: ImageConstant.imgImage15,
          soundsTitle: "7 Rings",
          singer: "Ariana Grande",
          time: "00:50",
          total: "762.5K")
    ]),
  )),
);

/// A notifier that manages the state of a SearchResultsSounds according to the event that is dispatched to it.
class SearchResultsSoundsNotifier
    extends StateNotifier<SearchResultsSoundsState> {
  SearchResultsSoundsNotifier(SearchResultsSoundsState state) : super(state) {}
}

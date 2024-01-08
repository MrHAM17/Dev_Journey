import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchpage_item_model.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/search_page/models/search_model.dart';
part 'search_state.dart';

final searchNotifier = StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(SearchState(
    searchModelObj: SearchModel(searchpageItemList: [
      SearchpageItemModel(
          presidentHotel: ImageConstant.imgRectangle,
          presidentHotel1: "President Hotel",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "35",
          night: "/ night"),
      SearchpageItemModel(
          presidentHotel: ImageConstant.imgRectangle4100x100,
          presidentHotel1: "Palms Casino",
          parisFrance: "Paris, France",
          price: "29",
          night: "/ night"),
      SearchpageItemModel(
          presidentHotel: ImageConstant.imgRectangle41,
          presidentHotel1: "Palazzo Versace",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "36",
          night: "/ night")
    ]),
  )),
);

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state) {}
}

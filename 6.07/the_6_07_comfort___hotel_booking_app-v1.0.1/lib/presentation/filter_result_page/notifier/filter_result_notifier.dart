import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/filterresult_item_model.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/filter_result_page/models/filter_result_model.dart';
part 'filter_result_state.dart';

final filterResultNotifier =
    StateNotifierProvider<FilterResultNotifier, FilterResultState>(
  (ref) => FilterResultNotifier(FilterResultState(
    filterResultModelObj: FilterResultModel(filterresultItemList: [
      FilterresultItemModel(
          presidentHotel: ImageConstant.imgRectangle,
          presidentHotel1: "President Hotel",
          parisFrance: "Paris, France",
          fortyEight: "4.8",
          reviews: "(4,378 reviews)",
          price: "35",
          night: "/ night"),
      FilterresultItemModel(
          presidentHotel: ImageConstant.imgRectangle4100x100,
          presidentHotel1: "Palms Casino",
          parisFrance: "Paris, France",
          price: "29",
          night: "/ night"),
      FilterresultItemModel(
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

/// A notifier that manages the state of a FilterResult according to the event that is dispatched to it.
class FilterResultNotifier extends StateNotifier<FilterResultState> {
  FilterResultNotifier(FilterResultState state) : super(state) {}
}

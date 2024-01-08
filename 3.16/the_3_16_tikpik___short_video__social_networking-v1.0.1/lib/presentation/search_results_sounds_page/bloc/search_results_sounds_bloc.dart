import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresultssounds_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_sounds_page/models/search_results_sounds_model.dart';
part 'search_results_sounds_event.dart';
part 'search_results_sounds_state.dart';

/// A bloc that manages the state of a SearchResultsSounds according to the event that is dispatched to it.
class SearchResultsSoundsBloc
    extends Bloc<SearchResultsSoundsEvent, SearchResultsSoundsState> {
  SearchResultsSoundsBloc(SearchResultsSoundsState initialState)
      : super(initialState) {
    on<SearchResultsSoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsSoundsInitialEvent event,
    Emitter<SearchResultsSoundsState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsSoundsModelObj:
            state.searchResultsSoundsModelObj?.copyWith(
      searchresultssoundsItemList: fillSearchresultssoundsItemList(),
    )));
  }

  List<SearchresultssoundsItemModel> fillSearchresultssoundsItemList() {
    return [
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
    ];
  }
}

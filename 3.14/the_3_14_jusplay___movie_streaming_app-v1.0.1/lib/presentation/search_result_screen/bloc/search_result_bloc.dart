import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresult_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/search_result_screen/models/search_result_model.dart';
part 'search_result_event.dart';
part 'search_result_state.dart';

/// A bloc that manages the state of a SearchResult according to the event that is dispatched to it.
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc(SearchResultState initialState) : super(initialState) {
    on<SearchResultInitialEvent>(_onInitialize);
  }

  List<SearchresultItemModel> fillSearchresultItemList() {
    return [
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle12078),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle12078140x102),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120781),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120782),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120783),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120784),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120785),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120786),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120787),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120788),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle120789),
      SearchresultItemModel(rectangle: ImageConstant.imgRectangle1207810)
    ];
  }

  _onInitialize(
    SearchResultInitialEvent event,
    Emitter<SearchResultState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchResultModelObj: state.searchResultModelObj
            ?.copyWith(searchresultItemList: fillSearchresultItemList())));
    NavigatorService.pushNamed(
      AppRoutes.notFoundScreen,
    );
  }
}

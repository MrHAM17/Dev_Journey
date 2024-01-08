import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresult_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/search_result_screen/models/search_result_model.dart';
part 'search_result_state.dart';

final searchResultNotifier = StateNotifierProvider<
        SearchResultNotifier, SearchResultState>(
    (ref) => SearchResultNotifier(SearchResultState(
        searchController: TextEditingController(),
        searchResultModelObj: SearchResultModel(searchresultItemList: [
          SearchresultItemModel(rectangle: ImageConstant.imgRectangle12078),
          SearchresultItemModel(
              rectangle: ImageConstant.imgRectangle12078140x102),
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
        ]))));

/// A notifier that manages the state of a SearchResult according to the event that is dispatched to it.
class SearchResultNotifier extends StateNotifier<SearchResultState> {
  SearchResultNotifier(SearchResultState state) : super(state);
}

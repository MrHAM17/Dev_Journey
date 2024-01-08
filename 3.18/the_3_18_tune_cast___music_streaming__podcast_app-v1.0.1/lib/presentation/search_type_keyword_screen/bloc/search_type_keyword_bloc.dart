import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchtypekeyword_item_model.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';
part 'search_type_keyword_event.dart';
part 'search_type_keyword_state.dart';

/// A bloc that manages the state of a SearchTypeKeyword according to the event that is dispatched to it.
class SearchTypeKeywordBloc
    extends Bloc<SearchTypeKeywordEvent, SearchTypeKeywordState> {
  SearchTypeKeywordBloc(SearchTypeKeywordState initialState)
      : super(initialState) {
    on<SearchTypeKeywordInitialEvent>(_onInitialize);
  }

  List<SearchtypekeywordItemModel> fillSearchtypekeywordItemList() {
    return [
      SearchtypekeywordItemModel(arianaGrande: "Ariana Grande"),
      SearchtypekeywordItemModel(arianaGrande: "Morgan Wallen"),
      SearchtypekeywordItemModel(arianaGrande: "Justin Bieber"),
      SearchtypekeywordItemModel(arianaGrande: "Drake"),
      SearchtypekeywordItemModel(arianaGrande: "Olivia Rodrigo"),
      SearchtypekeywordItemModel(arianaGrande: "The Weeknd"),
      SearchtypekeywordItemModel(arianaGrande: "Taylor Swift"),
      SearchtypekeywordItemModel(arianaGrande: "Juice Wrld")
    ];
  }

  _onInitialize(
    SearchTypeKeywordInitialEvent event,
    Emitter<SearchTypeKeywordState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTypeKeywordModelObj: state.searchTypeKeywordModelObj?.copyWith(
      searchtypekeywordItemList: fillSearchtypekeywordItemList(),
    )));
  }
}

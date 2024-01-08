import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayoutvertical1_item_model.dart';
import '../models/autolayoutvertical2_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';
part 'search_type_keyword_event.dart';
part 'search_type_keyword_state.dart';

/// A bloc that manages the state of a SearchTypeKeyword according to the event that is dispatched to it.
class SearchTypeKeywordBloc
    extends Bloc<SearchTypeKeywordEvent, SearchTypeKeywordState> {
  SearchTypeKeywordBloc(SearchTypeKeywordState initialState)
      : super(initialState) {
    on<SearchTypeKeywordInitialEvent>(_onInitialize);
  }

  List<Autolayoutvertical1ItemModel> fillAutolayoutvertical1ItemList() {
    return [
      Autolayoutvertical1ItemModel(theresaWebb: "Theresa Webb"),
      Autolayoutvertical1ItemModel(theresaWebb: "Cameron Williamson"),
      Autolayoutvertical1ItemModel(theresaWebb: "Floyd Miles"),
      Autolayoutvertical1ItemModel(theresaWebb: "Savannah Nguyen")
    ];
  }

  List<Autolayoutvertical2ItemModel> fillAutolayoutvertical2ItemList() {
    return [
      Autolayoutvertical2ItemModel(arianaGrande: "Ariana Grande"),
      Autolayoutvertical2ItemModel(arianaGrande: "Ariana Cooper"),
      Autolayoutvertical2ItemModel(arianaGrande: "Ariana Wilson")
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
      autolayoutvertical1ItemList: fillAutolayoutvertical1ItemList(),
      autolayoutvertical2ItemList: fillAutolayoutvertical2ItemList(),
    )));
  }
}

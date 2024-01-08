import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayoutvertical1_item_model.dart';
import '../models/autolayoutvertical2_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';
part 'search_type_keyword_state.dart';

final searchTypeKeywordNotifier =
    StateNotifierProvider<SearchTypeKeywordNotifier, SearchTypeKeywordState>(
  (ref) => SearchTypeKeywordNotifier(SearchTypeKeywordState(
    searchController: TextEditingController(),
    searchTypeKeywordModelObj:
        SearchTypeKeywordModel(autolayoutvertical1ItemList: [
      Autolayoutvertical1ItemModel(theresaWebb: "Theresa Webb"),
      Autolayoutvertical1ItemModel(theresaWebb: "Cameron Williamson"),
      Autolayoutvertical1ItemModel(theresaWebb: "Floyd Miles"),
      Autolayoutvertical1ItemModel(theresaWebb: "Savannah Nguyen")
    ], autolayoutvertical2ItemList: [
      Autolayoutvertical2ItemModel(arianaGrande: "Ariana Grande"),
      Autolayoutvertical2ItemModel(arianaGrande: "Ariana Cooper"),
      Autolayoutvertical2ItemModel(arianaGrande: "Ariana Wilson")
    ]),
  )),
);

/// A notifier that manages the state of a SearchTypeKeyword according to the event that is dispatched to it.
class SearchTypeKeywordNotifier extends StateNotifier<SearchTypeKeywordState> {
  SearchTypeKeywordNotifier(SearchTypeKeywordState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchtypekeyword_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';
part 'search_type_keyword_state.dart';

final searchTypeKeywordNotifier =
    StateNotifierProvider<SearchTypeKeywordNotifier, SearchTypeKeywordState>(
  (ref) => SearchTypeKeywordNotifier(SearchTypeKeywordState(
    searchController: TextEditingController(),
    searchTypeKeywordModelObj:
        SearchTypeKeywordModel(searchtypekeywordItemList: [
      SearchtypekeywordItemModel(arianaGrande: "Ariana Grande"),
      SearchtypekeywordItemModel(arianaGrande: "Morgan Wallen"),
      SearchtypekeywordItemModel(arianaGrande: "Justin Bieber"),
      SearchtypekeywordItemModel(arianaGrande: "Drake"),
      SearchtypekeywordItemModel(arianaGrande: "Olivia Rodrigo"),
      SearchtypekeywordItemModel(arianaGrande: "The Weeknd"),
      SearchtypekeywordItemModel(arianaGrande: "Taylor Swift"),
      SearchtypekeywordItemModel(arianaGrande: "Juice Wrld")
    ]),
  )),
);

/// A notifier that manages the state of a SearchTypeKeyword according to the event that is dispatched to it.
class SearchTypeKeywordNotifier extends StateNotifier<SearchTypeKeywordState> {
  SearchTypeKeywordNotifier(SearchTypeKeywordState state) : super(state) {}
}

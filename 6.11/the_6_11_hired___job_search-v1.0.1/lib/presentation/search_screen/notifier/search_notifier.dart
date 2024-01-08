import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_item_model.dart';
import '../models/fulltime5_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/search_screen/models/search_model.dart';
part 'search_state.dart';

final searchNotifier = StateNotifierProvider<SearchNotifier, SearchState>(
    (ref) => SearchNotifier(SearchState(
        searchController: TextEditingController(),
        searchModelObj: SearchModel(searchItemList: [
          SearchItemModel(
              settings: ImageConstant.imgSettingsRed800,
              digitalMarketing: "Senior UI/UX Designer",
              motorola: "Motorola",
              price: "560 - 12.000/Month"),
          SearchItemModel(
              settings: ImageConstant.imgCardano2,
              digitalMarketing: "Senior UI/UX Designer",
              motorola: "Motorola",
              price: "660 - 10.000/Month"),
          SearchItemModel(
              settings: ImageConstant.imgCardano2,
              digitalMarketing: "Marketing Manager",
              motorola: "Motorola",
              price: "560 - 12.000/Month"),
          SearchItemModel(
              settings: ImageConstant.imgSettings,
              digitalMarketing: "Senior UI/UX Designer",
              motorola: "Motorola",
              price: "560 - 12.000/Month")
        ]))));

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Fulltime5ItemModel> newList =
        List<Fulltime5ItemModel>.from(state.searchModelObj!.fulltime5ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(fulltime5ItemList: newList));
  }
}

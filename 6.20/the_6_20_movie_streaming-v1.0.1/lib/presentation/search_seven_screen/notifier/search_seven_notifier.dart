import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchseven_item_model.dart';
import '../models/frameseventynine_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/search_seven_screen/models/search_seven_model.dart';
part 'search_seven_state.dart';

final searchSevenNotifier =
    StateNotifierProvider<SearchSevenNotifier, SearchSevenState>((ref) =>
        SearchSevenNotifier(SearchSevenState(
            searchController: TextEditingController(),
            searchSevenModelObj: SearchSevenModel(
                searchsevenItemList: [
                  SearchsevenItemModel(
                      jallikatta: ImageConstant.imgThumbnailImage20,
                      title: "Jallikatta"),
                  SearchsevenItemModel(
                      jallikatta: ImageConstant.imgThumbnailImage25,
                      title: "The Brave"),
                  SearchsevenItemModel(
                      jallikatta: ImageConstant.imgThumbnailImage26,
                      title: "Helen"),
                  SearchsevenItemModel(
                      jallikatta: ImageConstant.imgThumbnailImage27,
                      title: "A1"),
                  SearchsevenItemModel(
                      jallikatta: ImageConstant.imgThumbnailImage28,
                      title: "Captain Marvel"),
                  SearchsevenItemModel(
                      jallikatta: ImageConstant.imgThumbnailImage24,
                      title: "Child’s Play")
                ],
                frameseventynineItemList: List.generate(
                    4, (index) => FrameseventynineItemModel())))));

/// A notifier that manages the state of a SearchSeven according to the event that is dispatched to it.
class SearchSevenNotifier extends StateNotifier<SearchSevenState> {
  SearchSevenNotifier(SearchSevenState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FrameseventynineItemModel> newList =
        List<FrameseventynineItemModel>.from(
            state.searchSevenModelObj!.frameseventynineItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        searchSevenModelObj: state.searchSevenModelObj
            ?.copyWith(frameseventynineItemList: newList));
  }
}

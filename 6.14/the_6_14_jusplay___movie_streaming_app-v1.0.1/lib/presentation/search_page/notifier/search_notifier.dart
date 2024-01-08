import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame3_item_model.dart';
import '../models/frame5_item_model.dart';
import '../models/frame6_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/search_page/models/search_model.dart';
part 'search_state.dart';

final searchNotifier = StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(SearchState(
    searchController: TextEditingController(),
    searchModelObj: SearchModel(
        frame3ItemList: List.generate(4, (index) => Frame3ItemModel()),
        frame5ItemList: [
          Frame5ItemModel(rectangle: ImageConstant.imgRectangle12078135x98),
          Frame5ItemModel(rectangle: ImageConstant.imgRectangle12079),
          Frame5ItemModel(rectangle: ImageConstant.imgRectangle12080),
          Frame5ItemModel(rectangle: ImageConstant.imgRectangle12081)
        ],
        frame6ItemList: [
          Frame6ItemModel(rectangle: ImageConstant.imgRectangle12082),
          Frame6ItemModel(rectangle: ImageConstant.imgRectangle12083),
          Frame6ItemModel(rectangle: ImageConstant.imgRectangle12084),
          Frame6ItemModel(rectangle: ImageConstant.imgRectangle12085)
        ]),
  )),
);

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Frame3ItemModel> newList =
        List<Frame3ItemModel>.from(state.searchModelObj!.frame3ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(frame3ItemList: newList));
  }
}

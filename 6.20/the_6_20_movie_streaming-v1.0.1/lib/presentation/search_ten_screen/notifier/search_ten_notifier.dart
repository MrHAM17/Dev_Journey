import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchten_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/search_ten_screen/models/search_ten_model.dart';
part 'search_ten_state.dart';

final searchTenNotifier =
    StateNotifierProvider<SearchTenNotifier, SearchTenState>(
        (ref) => SearchTenNotifier(SearchTenState(
            searchController: TextEditingController(),
            popularSearch: false,
            searchTenModelObj: SearchTenModel(searchtenItemList: [
              SearchtenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage20,
                  title: "Jallikatta"),
              SearchtenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage25,
                  title: "The Brave"),
              SearchtenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen")
            ]))));

/// A notifier that manages the state of a SearchTen according to the event that is dispatched to it.
class SearchTenNotifier extends StateNotifier<SearchTenState> {
  SearchTenNotifier(SearchTenState state) : super(state);

  void changeCheckBox1(bool value) {
    state = state.copyWith(popularSearch: value);
  }
}

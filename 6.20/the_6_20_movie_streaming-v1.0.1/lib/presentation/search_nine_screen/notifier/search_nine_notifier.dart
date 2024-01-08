import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchnine_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/search_nine_screen/models/search_nine_model.dart';
part 'search_nine_state.dart';

final searchNineNotifier =
    StateNotifierProvider<SearchNineNotifier, SearchNineState>(
        (ref) => SearchNineNotifier(SearchNineState(
            searchController: TextEditingController(),
            searchNineModelObj: SearchNineModel(searchnineItemList: [
              SearchnineItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage20,
                  title: "Jallikatta"),
              SearchnineItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage25,
                  title: "The Brave"),
              SearchnineItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage26,
                  title: "Helen"),
              SearchnineItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
              SearchnineItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage28,
                  title: "Captain Marvel"),
              SearchnineItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage24,
                  title: "Child’s Play")
            ]))));

/// A notifier that manages the state of a SearchNine according to the event that is dispatched to it.
class SearchNineNotifier extends StateNotifier<SearchNineState> {
  SearchNineNotifier(SearchNineState state) : super(state);
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies7_item_model.dart';
import '../models/movies8_item_model.dart';
import '../models/movies9_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/search_six_screen/models/search_six_model.dart';
part 'search_six_state.dart';

final searchSixNotifier =
    StateNotifierProvider<SearchSixNotifier, SearchSixState>(
        (ref) => SearchSixNotifier(SearchSixState(
            searchController: TextEditingController(),
            searchSixModelObj: SearchSixModel(movies7ItemList: [
              Movies7ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage1,
                  title: "Turner & Hooch",
                  title1: "Sub-Title"),
              Movies7ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage26,
                  title: "Hellen",
                  title1: "What a happy Family"),
              Movies7ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage24,
                  title: "Child’s Play",
                  title1: "Sub-Title")
            ], movies8ItemList: [
              Movies8ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage1,
                  title: "Turner & Hooch",
                  title1: "Sub-Title"),
              Movies8ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage26,
                  title: "Hellen",
                  title1: "What a happy Family"),
              Movies8ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage24,
                  title: "Child’s Play",
                  title1: "Sub-Title")
            ], movies9ItemList: [
              Movies9ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage1,
                  title: "Turner & Hooch",
                  title1: "Sub-Title"),
              Movies9ItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage24,
                  title: "Child’s Play",
                  title1: "Sub-Title")
            ]))));

/// A notifier that manages the state of a SearchSix according to the event that is dispatched to it.
class SearchSixNotifier extends StateNotifier<SearchSixState> {
  SearchSixNotifier(SearchSixState state) : super(state);
}

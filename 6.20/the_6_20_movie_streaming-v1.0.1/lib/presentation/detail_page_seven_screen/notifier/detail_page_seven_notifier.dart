import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_seven_screen/models/detail_page_seven_model.dart';
part 'detail_page_seven_state.dart';

final detailPageSevenNotifier =
    StateNotifierProvider<DetailPageSevenNotifier, DetailPageSevenState>(
        (ref) => DetailPageSevenNotifier(DetailPageSevenState(
                detailPageSevenModelObj: DetailPageSevenModel(moviesItemList: [
              MoviesItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage180x120,
                  title: "IO: Netflix",
                  title1: "In near future we must save earth"),
              MoviesItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage7,
                  title: "I Kill Giants",
                  title1: "No more Surrender this time"),
              MoviesItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage9,
                  title: "Angel has Fallen",
                  title1: "Loyalty under everything")
            ]))));

/// A notifier that manages the state of a DetailPageSeven according to the event that is dispatched to it.
class DetailPageSevenNotifier extends StateNotifier<DetailPageSevenState> {
  DetailPageSevenNotifier(DetailPageSevenState state) : super(state);
}

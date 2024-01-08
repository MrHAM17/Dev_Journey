import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies3_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_eleven_screen/models/detail_page_eleven_model.dart';
part 'detail_page_eleven_state.dart';

final detailPageElevenNotifier = StateNotifierProvider<DetailPageElevenNotifier,
        DetailPageElevenState>(
    (ref) => DetailPageElevenNotifier(DetailPageElevenState(
            detailPageElevenModelObj: DetailPageElevenModel(movies3ItemList: [
          Movies3ItemModel(
              iONetflix: ImageConstant.imgThumbnailImage180x120,
              title: "IO: Netflix",
              title1: "In near future we must save earth"),
          Movies3ItemModel(
              iONetflix: ImageConstant.imgThumbnailImage7,
              title: "I Kill Giants",
              title1: "No more Surrender this time"),
          Movies3ItemModel(
              iONetflix: ImageConstant.imgThumbnailImage9,
              title: "Angel has Fallen",
              title1: "Loyalty under everything")
        ]))));

/// A notifier that manages the state of a DetailPageEleven according to the event that is dispatched to it.
class DetailPageElevenNotifier extends StateNotifier<DetailPageElevenState> {
  DetailPageElevenNotifier(DetailPageElevenState state) : super(state);
}

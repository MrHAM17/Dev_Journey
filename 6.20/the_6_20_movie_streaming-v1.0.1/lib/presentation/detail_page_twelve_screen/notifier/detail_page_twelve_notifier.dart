import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies4_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_twelve_screen/models/detail_page_twelve_model.dart';
part 'detail_page_twelve_state.dart';

final detailPageTwelveNotifier = StateNotifierProvider<DetailPageTwelveNotifier,
        DetailPageTwelveState>(
    (ref) => DetailPageTwelveNotifier(DetailPageTwelveState(
            detailPageTwelveModelObj: DetailPageTwelveModel(movies4ItemList: [
          Movies4ItemModel(
              iONetflix: ImageConstant.imgThumbnailImage180x120,
              title: "IO: Netflix",
              title1: "In near future we must save earth"),
          Movies4ItemModel(
              iONetflix: ImageConstant.imgThumbnailImage7,
              title: "I Kill Giants",
              title1: "No more Surrender this time"),
          Movies4ItemModel(
              iONetflix: ImageConstant.imgThumbnailImage9,
              title: "Angel has Fallen",
              title1: "Loyalty under everything")
        ]))));

/// A notifier that manages the state of a DetailPageTwelve according to the event that is dispatched to it.
class DetailPageTwelveNotifier extends StateNotifier<DetailPageTwelveState> {
  DetailPageTwelveNotifier(DetailPageTwelveState state) : super(state);
}

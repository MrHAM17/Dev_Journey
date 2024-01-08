import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies2_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_ten_screen/models/detail_page_ten_model.dart';
part 'detail_page_ten_state.dart';

final detailPageTenNotifier =
    StateNotifierProvider<DetailPageTenNotifier, DetailPageTenState>(
        (ref) => DetailPageTenNotifier(DetailPageTenState(
                detailPageTenModelObj: DetailPageTenModel(movies2ItemList: [
              Movies2ItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage180x120,
                  title: "IO: Netflix",
                  title1: "In near future we must save earth"),
              Movies2ItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage7,
                  title: "I Kill Giants",
                  title1: "No more Surrender this time"),
              Movies2ItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage9,
                  title: "Angel has Fallen",
                  title1: "Loyalty under everything")
            ]))));

/// A notifier that manages the state of a DetailPageTen according to the event that is dispatched to it.
class DetailPageTenNotifier extends StateNotifier<DetailPageTenState> {
  DetailPageTenNotifier(DetailPageTenState state) : super(state);
}

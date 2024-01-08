import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framefiftythree_item_model.dart';
import '../models/movies1_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';
part 'detail_page_nine_state.dart';

final detailPageNineNotifier =
    StateNotifierProvider<DetailPageNineNotifier, DetailPageNineState>((ref) =>
        DetailPageNineNotifier(DetailPageNineState(
            detailPageNineModelObj: DetailPageNineModel(
                framefiftythreeItemList:
                    List.generate(4, (index) => FramefiftythreeItemModel()),
                movies1ItemList: [
              Movies1ItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage180x120,
                  title: "IO: Netflix",
                  title1: "In near future we must save earth"),
              Movies1ItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage7,
                  title: "I Kill Giants",
                  title1: "No more Surrender this time"),
              Movies1ItemModel(
                  iONetflix: ImageConstant.imgThumbnailImage9,
                  title: "Angel has Fallen",
                  title1: "Loyalty under everything")
            ]))));

/// A notifier that manages the state of a DetailPageNine according to the event that is dispatched to it.
class DetailPageNineNotifier extends StateNotifier<DetailPageNineState> {
  DetailPageNineNotifier(DetailPageNineState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FramefiftythreeItemModel> newList =
        List<FramefiftythreeItemModel>.from(
            state.detailPageNineModelObj!.framefiftythreeItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        detailPageNineModelObj: state.detailPageNineModelObj
            ?.copyWith(framefiftythreeItemList: newList));
  }
}

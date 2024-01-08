import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framefiftythree_item_model.dart';
import '../models/movies1_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';
part 'detail_page_nine_event.dart';
part 'detail_page_nine_state.dart';

/// A bloc that manages the state of a DetailPageNine according to the event that is dispatched to it.
class DetailPageNineBloc
    extends Bloc<DetailPageNineEvent, DetailPageNineState> {
  DetailPageNineBloc(DetailPageNineState initialState) : super(initialState) {
    on<DetailPageNineInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    DetailPageNineInitialEvent event,
    Emitter<DetailPageNineState> emit,
  ) async {
    emit(state.copyWith(
        detailPageNineModelObj: state.detailPageNineModelObj?.copyWith(
            framefiftythreeItemList: fillFramefiftythreeItemList(),
            movies1ItemList: fillMovies1ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DetailPageNineState> emit,
  ) {
    List<FramefiftythreeItemModel> newList =
        List<FramefiftythreeItemModel>.from(
            state.detailPageNineModelObj!.framefiftythreeItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        detailPageNineModelObj: state.detailPageNineModelObj
            ?.copyWith(framefiftythreeItemList: newList)));
  }

  List<FramefiftythreeItemModel> fillFramefiftythreeItemList() {
    return List.generate(4, (index) => FramefiftythreeItemModel());
  }

  List<Movies1ItemModel> fillMovies1ItemList() {
    return [
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
    ];
  }
}

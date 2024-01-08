import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies5_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/detail_page_eight_screen/models/detail_page_eight_model.dart';
part 'detail_page_eight_event.dart';
part 'detail_page_eight_state.dart';

/// A bloc that manages the state of a DetailPageEight according to the event that is dispatched to it.
class DetailPageEightBloc
    extends Bloc<DetailPageEightEvent, DetailPageEightState> {
  DetailPageEightBloc(DetailPageEightState initialState) : super(initialState) {
    on<DetailPageEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageEightInitialEvent event,
    Emitter<DetailPageEightState> emit,
  ) async {
    emit(state.copyWith(
        detailPageEightModelObj: state.detailPageEightModelObj
            ?.copyWith(movies5ItemList: fillMovies5ItemList())));
    NavigatorService.pushNamed(
      AppRoutes.channelFourScreen,
    );
  }

  List<Movies5ItemModel> fillMovies5ItemList() {
    return [
      Movies5ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage180x120,
          title: "IO: Netflix",
          title1: "In near future we must save earth"),
      Movies5ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "No more Surrender this time"),
      Movies5ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Loyalty under everything")
    ];
  }
}

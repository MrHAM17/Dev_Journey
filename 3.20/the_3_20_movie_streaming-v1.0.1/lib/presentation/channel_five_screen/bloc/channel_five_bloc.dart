import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies6_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/channel_five_screen/models/channel_five_model.dart';
part 'channel_five_event.dart';
part 'channel_five_state.dart';

/// A bloc that manages the state of a ChannelFive according to the event that is dispatched to it.
class ChannelFiveBloc extends Bloc<ChannelFiveEvent, ChannelFiveState> {
  ChannelFiveBloc(ChannelFiveState initialState) : super(initialState) {
    on<ChannelFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelFiveInitialEvent event,
    Emitter<ChannelFiveState> emit,
  ) async {
    emit(state.copyWith(
        channelFiveModelObj: state.channelFiveModelObj
            ?.copyWith(movies6ItemList: fillMovies6ItemList())));
  }

  List<Movies6ItemModel> fillMovies6ItemList() {
    return [
      Movies6ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies6ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      Movies6ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }
}

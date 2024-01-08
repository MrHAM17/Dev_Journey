import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/episode_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/episode_page/models/episode_model.dart';
part 'episode_event.dart';
part 'episode_state.dart';

/// A bloc that manages the state of a Episode according to the event that is dispatched to it.
class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc(EpisodeState initialState) : super(initialState) {
    on<EpisodeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EpisodeInitialEvent event,
    Emitter<EpisodeState> emit,
  ) async {
    emit(state.copyWith(
        episodeModelObj: state.episodeModelObj
            ?.copyWith(episodeItemList: fillEpisodeItemList())));
  }

  List<EpisodeItemModel> fillEpisodeItemList() {
    return [
      EpisodeItemModel(
          trailer: "Trailer",
          trailer1: ImageConstant.imgDownload,
          aladdinAStreet:
              "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find..."),
      EpisodeItemModel(
          trailer: "Trailer",
          aladdinAStreet:
              "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find...")
    ];
  }
}

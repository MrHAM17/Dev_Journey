import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/historypodcast_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/history_podcast_page/models/history_podcast_model.dart';
part 'history_podcast_state.dart';

final historyPodcastNotifier =
    StateNotifierProvider<HistoryPodcastNotifier, HistoryPodcastState>(
  (ref) => HistoryPodcastNotifier(HistoryPodcastState(
    historyPodcastModelObj: HistoryPodcastModel(historypodcastItemList: [
      HistorypodcastItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      HistorypodcastItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer)
    ]),
  )),
);

/// A notifier that manages the state of a HistoryPodcast according to the event that is dispatched to it.
class HistoryPodcastNotifier extends StateNotifier<HistoryPodcastState> {
  HistoryPodcastNotifier(HistoryPodcastState state) : super(state) {}
}

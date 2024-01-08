import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/episode_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/episode_page/models/episode_model.dart';
part 'episode_state.dart';

final episodeNotifier = StateNotifierProvider<EpisodeNotifier, EpisodeState>(
    (ref) => EpisodeNotifier(EpisodeState(
            episodeModelObj: EpisodeModel(episodeItemList: [
          EpisodeItemModel(
              trailer: "Trailer",
              trailer1: ImageConstant.imgDownload,
              aladdinAStreet:
                  "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find..."),
          EpisodeItemModel(
              trailer: "Trailer",
              aladdinAStreet:
                  "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find...")
        ]))));

/// A notifier that manages the state of a Episode according to the event that is dispatched to it.
class EpisodeNotifier extends StateNotifier<EpisodeState> {
  EpisodeNotifier(EpisodeState state) : super(state);
}

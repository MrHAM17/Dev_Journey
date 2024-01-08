import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/episode_tab_container_screen/models/episode_tab_container_model.dart';
part 'episode_tab_container_state.dart';

final episodeTabContainerNotifier = StateNotifierProvider<
        EpisodeTabContainerNotifier, EpisodeTabContainerState>(
    (ref) => EpisodeTabContainerNotifier(EpisodeTabContainerState(
        episodeTabContainerModelObj: EpisodeTabContainerModel())));

/// A notifier that manages the state of a EpisodeTabContainer according to the event that is dispatched to it.
class EpisodeTabContainerNotifier
    extends StateNotifier<EpisodeTabContainerState> {
  EpisodeTabContainerNotifier(EpisodeTabContainerState state) : super(state);
}

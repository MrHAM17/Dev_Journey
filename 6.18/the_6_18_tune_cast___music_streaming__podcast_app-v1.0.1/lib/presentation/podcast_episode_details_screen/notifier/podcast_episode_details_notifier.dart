import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/podcast_episode_details_screen/models/podcast_episode_details_model.dart';part 'podcast_episode_details_state.dart';final podcastEpisodeDetailsNotifier = StateNotifierProvider<PodcastEpisodeDetailsNotifier, PodcastEpisodeDetailsState>((ref) => PodcastEpisodeDetailsNotifier(PodcastEpisodeDetailsState(podcastEpisodeDetailsModelObj: PodcastEpisodeDetailsModel())));
/// A notifier that manages the state of a PodcastEpisodeDetails according to the event that is dispatched to it.
class PodcastEpisodeDetailsNotifier extends StateNotifier<PodcastEpisodeDetailsState> {PodcastEpisodeDetailsNotifier(PodcastEpisodeDetailsState state) : super(state);

 }

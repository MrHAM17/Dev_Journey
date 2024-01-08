import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/history_podcast_tab_container_screen/models/history_podcast_tab_container_model.dart';part 'history_podcast_tab_container_state.dart';final historyPodcastTabContainerNotifier = StateNotifierProvider<HistoryPodcastTabContainerNotifier, HistoryPodcastTabContainerState>((ref) => HistoryPodcastTabContainerNotifier(HistoryPodcastTabContainerState(historyPodcastTabContainerModelObj: HistoryPodcastTabContainerModel())));
/// A notifier that manages the state of a HistoryPodcastTabContainer according to the event that is dispatched to it.
class HistoryPodcastTabContainerNotifier extends StateNotifier<HistoryPodcastTabContainerState> {HistoryPodcastTabContainerNotifier(HistoryPodcastTabContainerState state) : super(state);

 }

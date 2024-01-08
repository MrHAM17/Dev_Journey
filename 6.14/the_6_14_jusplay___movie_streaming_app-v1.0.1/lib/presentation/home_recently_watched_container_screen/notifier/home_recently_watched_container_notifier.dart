import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/home_recently_watched_container_screen/models/home_recently_watched_container_model.dart';
part 'home_recently_watched_container_state.dart';

final homeRecentlyWatchedContainerNotifier = StateNotifierProvider<
        HomeRecentlyWatchedContainerNotifier,
        HomeRecentlyWatchedContainerState>(
    (ref) => HomeRecentlyWatchedContainerNotifier(
        HomeRecentlyWatchedContainerState(
            homeRecentlyWatchedContainerModelObj:
                HomeRecentlyWatchedContainerModel())));

/// A notifier that manages the state of a HomeRecentlyWatchedContainer according to the event that is dispatched to it.
class HomeRecentlyWatchedContainerNotifier
    extends StateNotifier<HomeRecentlyWatchedContainerState> {
  HomeRecentlyWatchedContainerNotifier(HomeRecentlyWatchedContainerState state)
      : super(state);
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_recently_watched_container_screen/models/home_recently_watched_container_model.dart';
part 'home_recently_watched_container_event.dart';
part 'home_recently_watched_container_state.dart';

/// A bloc that manages the state of a HomeRecentlyWatchedContainer according to the event that is dispatched to it.
class HomeRecentlyWatchedContainerBloc extends Bloc<
    HomeRecentlyWatchedContainerEvent, HomeRecentlyWatchedContainerState> {
  HomeRecentlyWatchedContainerBloc(
      HomeRecentlyWatchedContainerState initialState)
      : super(initialState) {
    on<HomeRecentlyWatchedContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeRecentlyWatchedContainerInitialEvent event,
    Emitter<HomeRecentlyWatchedContainerState> emit,
  ) async {}
}

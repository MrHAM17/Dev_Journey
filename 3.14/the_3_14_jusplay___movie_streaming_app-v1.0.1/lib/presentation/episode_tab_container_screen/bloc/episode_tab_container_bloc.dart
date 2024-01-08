import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/episode_tab_container_screen/models/episode_tab_container_model.dart';
part 'episode_tab_container_event.dart';
part 'episode_tab_container_state.dart';

/// A bloc that manages the state of a EpisodeTabContainer according to the event that is dispatched to it.
class EpisodeTabContainerBloc
    extends Bloc<EpisodeTabContainerEvent, EpisodeTabContainerState> {
  EpisodeTabContainerBloc(EpisodeTabContainerState initialState)
      : super(initialState) {
    on<EpisodeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EpisodeTabContainerInitialEvent event,
    Emitter<EpisodeTabContainerState> emit,
  ) async {}
}

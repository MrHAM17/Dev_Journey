import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/episode_tab_container_screen/models/episode_tab_container_model.dart';

/// A provider class for the EpisodeTabContainerScreen.
///
/// This provider manages the state of the EpisodeTabContainerScreen, including the
/// current episodeTabContainerModelObj

// ignore_for_file: must_be_immutable
class EpisodeTabContainerProvider extends ChangeNotifier {
  EpisodeTabContainerModel episodeTabContainerModelObj =
      EpisodeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

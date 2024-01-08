import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/episode_page/models/episode_model.dart';
import '../models/episode_item_model.dart';

/// A provider class for the EpisodePage.
///
/// This provider manages the state of the EpisodePage, including the
/// current episodeModelObj

// ignore_for_file: must_be_immutable
class EpisodeProvider extends ChangeNotifier {
  EpisodeModel episodeModelObj = EpisodeModel();

  @override
  void dispose() {
    super.dispose();
  }
}

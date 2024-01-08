import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/podcast_episode_details_screen/models/podcast_episode_details_model.dart';/// A provider class for the PodcastEpisodeDetailsScreen.
///
/// This provider manages the state of the PodcastEpisodeDetailsScreen, including the
/// current podcastEpisodeDetailsModelObj

// ignore_for_file: must_be_immutable
class PodcastEpisodeDetailsProvider extends ChangeNotifier {PodcastEpisodeDetailsModel podcastEpisodeDetailsModelObj = PodcastEpisodeDetailsModel();

@override void dispose() { super.dispose(); } 
 }

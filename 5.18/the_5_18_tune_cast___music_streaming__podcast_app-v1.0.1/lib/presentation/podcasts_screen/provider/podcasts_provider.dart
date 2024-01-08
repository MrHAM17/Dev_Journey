import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/podcasts_screen/models/podcasts_model.dart';import '../models/frame_item_model.dart';import '../models/artists_item_model.dart';import '../models/podcasts_item_model.dart';/// A provider class for the PodcastsScreen.
///
/// This provider manages the state of the PodcastsScreen, including the
/// current podcastsModelObj

// ignore_for_file: must_be_immutable
class PodcastsProvider extends ChangeNotifier {PodcastsModel podcastsModelObj = PodcastsModel();

@override void dispose() { super.dispose(); } 
 }

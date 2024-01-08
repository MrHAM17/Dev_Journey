import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/podcast_details_screen/models/podcast_details_model.dart';import '../models/podcastdetails_item_model.dart';/// A provider class for the PodcastDetailsScreen.
///
/// This provider manages the state of the PodcastDetailsScreen, including the
/// current podcastDetailsModelObj

// ignore_for_file: must_be_immutable
class PodcastDetailsProvider extends ChangeNotifier {PodcastDetailsModel podcastDetailsModelObj = PodcastDetailsModel();

@override void dispose() { super.dispose(); } 
 }

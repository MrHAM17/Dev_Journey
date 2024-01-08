import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/podcasters_page/models/podcasters_model.dart';import '../models/podcasters_item_model.dart';/// A provider class for the PodcastersPage.
///
/// This provider manages the state of the PodcastersPage, including the
/// current podcastersModelObj

// ignore_for_file: must_be_immutable
class PodcastersProvider extends ChangeNotifier {PodcastersModel podcastersModelObj = PodcastersModel();

@override void dispose() { super.dispose(); } 
 }

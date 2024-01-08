import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_result_podcast_page/models/search_result_podcast_model.dart';import '../models/frame1_item_model.dart';import '../models/fiftynine_item_model.dart';/// A provider class for the SearchResultPodcastPage.
///
/// This provider manages the state of the SearchResultPodcastPage, including the
/// current searchResultPodcastModelObj

// ignore_for_file: must_be_immutable
class SearchResultPodcastProvider extends ChangeNotifier {SearchResultPodcastModel searchResultPodcastModelObj = SearchResultPodcastModel();

@override void dispose() { super.dispose(); } 
 }

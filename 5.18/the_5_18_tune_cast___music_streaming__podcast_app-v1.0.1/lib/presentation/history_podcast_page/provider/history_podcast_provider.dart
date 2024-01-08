import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/history_podcast_page/models/history_podcast_model.dart';import '../models/historypodcast_item_model.dart';/// A provider class for the HistoryPodcastPage.
///
/// This provider manages the state of the HistoryPodcastPage, including the
/// current historyPodcastModelObj

// ignore_for_file: must_be_immutable
class HistoryPodcastProvider extends ChangeNotifier {HistoryPodcastModel historyPodcastModelObj = HistoryPodcastModel();

@override void dispose() { super.dispose(); } 
 }

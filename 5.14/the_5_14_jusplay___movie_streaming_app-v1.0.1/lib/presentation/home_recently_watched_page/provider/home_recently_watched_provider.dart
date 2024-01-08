import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/models/home_recently_watched_model.dart';
import '../models/widget1_item_model.dart';
import '../models/frame1_item_model.dart';
import '../models/frame2_item_model.dart';

/// A provider class for the HomeRecentlyWatchedPage.
///
/// This provider manages the state of the HomeRecentlyWatchedPage, including the
/// current homeRecentlyWatchedModelObj

// ignore_for_file: must_be_immutable
class HomeRecentlyWatchedProvider extends ChangeNotifier {
  HomeRecentlyWatchedModel homeRecentlyWatchedModelObj =
      HomeRecentlyWatchedModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}

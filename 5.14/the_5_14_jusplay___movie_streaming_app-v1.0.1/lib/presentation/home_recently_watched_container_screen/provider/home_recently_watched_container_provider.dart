import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/home_recently_watched_container_screen/models/home_recently_watched_container_model.dart';

/// A provider class for the HomeRecentlyWatchedContainerScreen.
///
/// This provider manages the state of the HomeRecentlyWatchedContainerScreen, including the
/// current homeRecentlyWatchedContainerModelObj

// ignore_for_file: must_be_immutable
class HomeRecentlyWatchedContainerProvider extends ChangeNotifier {
  HomeRecentlyWatchedContainerModel homeRecentlyWatchedContainerModelObj =
      HomeRecentlyWatchedContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

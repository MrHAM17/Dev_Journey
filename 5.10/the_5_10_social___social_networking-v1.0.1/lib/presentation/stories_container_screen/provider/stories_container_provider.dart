import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/stories_container_screen/models/stories_container_model.dart';

/// A provider class for the StoriesContainerScreen.
///
/// This provider manages the state of the StoriesContainerScreen, including the
/// current storiesContainerModelObj

// ignore_for_file: must_be_immutable
class StoriesContainerProvider extends ChangeNotifier {
  StoriesContainerModel storiesContainerModelObj = StoriesContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

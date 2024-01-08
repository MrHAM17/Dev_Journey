import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/your_likes_tab_container_screen/models/your_likes_tab_container_model.dart';

/// A provider class for the YourLikesTabContainerScreen.
///
/// This provider manages the state of the YourLikesTabContainerScreen, including the
/// current yourLikesTabContainerModelObj
class YourLikesTabContainerProvider extends ChangeNotifier {
  YourLikesTabContainerModel yourLikesTabContainerModelObj =
      YourLikesTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

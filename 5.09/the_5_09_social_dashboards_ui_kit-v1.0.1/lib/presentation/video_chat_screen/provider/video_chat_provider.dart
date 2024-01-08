import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/video_chat_screen/models/video_chat_model.dart';

/// A provider class for the VideoChatScreen.
///
/// This provider manages the state of the VideoChatScreen, including the
/// current videoChatModelObj
class VideoChatProvider extends ChangeNotifier {
  VideoChatModel videoChatModelObj = VideoChatModel();

  @override
  void dispose() {
    super.dispose();
  }
}

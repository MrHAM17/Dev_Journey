import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/video_call_screen/models/video_call_model.dart';

/// A provider class for the VideoCallScreen.
///
/// This provider manages the state of the VideoCallScreen, including the
/// current videoCallModelObj
class VideoCallProvider extends ChangeNotifier {
  VideoCallModel videoCallModelObj = VideoCallModel();

  @override
  void dispose() {
    super.dispose();
  }
}

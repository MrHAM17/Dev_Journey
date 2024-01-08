import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/audio_call_screen/models/audio_call_model.dart';

/// A provider class for the AudioCallScreen.
///
/// This provider manages the state of the AudioCallScreen, including the
/// current audioCallModelObj
class AudioCallProvider extends ChangeNotifier {
  AudioCallModel audioCallModelObj = AudioCallModel();

  @override
  void dispose() {
    super.dispose();
  }
}

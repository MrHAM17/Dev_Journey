import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/audio_video_screen/models/audio_video_model.dart';/// A provider class for the AudioVideoScreen.
///
/// This provider manages the state of the AudioVideoScreen, including the
/// current audioVideoModelObj

// ignore_for_file: must_be_immutable
class AudioVideoProvider extends ChangeNotifier {AudioVideoModel audioVideoModelObj = AudioVideoModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
 }

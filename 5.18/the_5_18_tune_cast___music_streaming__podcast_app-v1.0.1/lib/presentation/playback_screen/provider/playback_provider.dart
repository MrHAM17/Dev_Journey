import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/playback_screen/models/playback_model.dart';import '../models/playback_item_model.dart';/// A provider class for the PlaybackScreen.
///
/// This provider manages the state of the PlaybackScreen, including the
/// current playbackModelObj

// ignore_for_file: must_be_immutable
class PlaybackProvider extends ChangeNotifier {PlaybackModel playbackModelObj = PlaybackModel();

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(int index, bool value, ) { playbackModelObj.playbackItemList[index].isSelectedSwitch = value; notifyListeners(); } 
 }

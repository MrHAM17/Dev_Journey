import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/song_play_screen/models/song_play_model.dart';/// A provider class for the SongPlayScreen.
///
/// This provider manages the state of the SongPlayScreen, including the
/// current songPlayModelObj

// ignore_for_file: must_be_immutable
class SongPlayProvider extends ChangeNotifier {SongPlayModel songPlayModelObj = SongPlayModel();

@override void dispose() { super.dispose(); } 
 }

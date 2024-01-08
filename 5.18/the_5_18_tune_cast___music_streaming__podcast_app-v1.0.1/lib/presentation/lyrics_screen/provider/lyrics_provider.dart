import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/lyrics_screen/models/lyrics_model.dart';/// A provider class for the LyricsScreen.
///
/// This provider manages the state of the LyricsScreen, including the
/// current lyricsModelObj

// ignore_for_file: must_be_immutable
class LyricsProvider extends ChangeNotifier {LyricsModel lyricsModelObj = LyricsModel();

@override void dispose() { super.dispose(); } 
 }

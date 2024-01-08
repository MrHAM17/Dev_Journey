import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/songs_screen/models/songs_model.dart';import '../models/songs_item_model.dart';/// A provider class for the SongsScreen.
///
/// This provider manages the state of the SongsScreen, including the
/// current songsModelObj

// ignore_for_file: must_be_immutable
class SongsProvider extends ChangeNotifier {SongsModel songsModelObj = SongsModel();

@override void dispose() { super.dispose(); } 
 }

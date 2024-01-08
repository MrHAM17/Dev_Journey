import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/song_play_over_screen_page/models/song_play_over_screen_model.dart';import '../models/songplayoverscreen_item_model.dart';/// A provider class for the SongPlayOverScreenPage.
///
/// This provider manages the state of the SongPlayOverScreenPage, including the
/// current songPlayOverScreenModelObj

// ignore_for_file: must_be_immutable
class SongPlayOverScreenProvider extends ChangeNotifier {SongPlayOverScreenModel songPlayOverScreenModelObj = SongPlayOverScreenModel();

@override void dispose() { super.dispose(); } 
 }

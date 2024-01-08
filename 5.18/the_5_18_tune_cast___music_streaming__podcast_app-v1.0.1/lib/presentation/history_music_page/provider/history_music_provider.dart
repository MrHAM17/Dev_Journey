import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/history_music_page/models/history_music_model.dart';import '../models/historymusic_item_model.dart';/// A provider class for the HistoryMusicPage.
///
/// This provider manages the state of the HistoryMusicPage, including the
/// current historyMusicModelObj

// ignore_for_file: must_be_immutable
class HistoryMusicProvider extends ChangeNotifier {HistoryMusicModel historyMusicModelObj = HistoryMusicModel();

@override void dispose() { super.dispose(); } 
 }

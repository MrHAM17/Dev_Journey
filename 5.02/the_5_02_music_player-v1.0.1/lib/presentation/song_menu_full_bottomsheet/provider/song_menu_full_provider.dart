import 'package:flutter/material.dart';
import 'package:the_5_02_music_player/core/app_export.dart';
import 'package:the_5_02_music_player/presentation/song_menu_full_bottomsheet/models/song_menu_full_model.dart';
import '../models/options_item_model.dart';

/// A provider class for the SongMenuFullBottomsheet.
///
/// This provider manages the state of the SongMenuFullBottomsheet, including the
/// current songMenuFullModelObj

// ignore_for_file: must_be_immutable
class SongMenuFullProvider extends ChangeNotifier {
  SongMenuFullModel songMenuFullModelObj = SongMenuFullModel();

  @override
  void dispose() {
    super.dispose();
  }
}

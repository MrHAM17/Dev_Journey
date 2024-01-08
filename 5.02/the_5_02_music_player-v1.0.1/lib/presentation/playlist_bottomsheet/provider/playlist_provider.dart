import 'package:flutter/material.dart';
import 'package:the_5_02_music_player/core/app_export.dart';
import 'package:the_5_02_music_player/presentation/playlist_bottomsheet/models/playlist_model.dart';
import '../models/playlist_item_model.dart';

/// A provider class for the PlaylistBottomsheet.
///
/// This provider manages the state of the PlaylistBottomsheet, including the
/// current playlistModelObj

// ignore_for_file: must_be_immutable
class PlaylistProvider extends ChangeNotifier {
  PlaylistModel playlistModelObj = PlaylistModel();

  @override
  void dispose() {
    super.dispose();
  }
}

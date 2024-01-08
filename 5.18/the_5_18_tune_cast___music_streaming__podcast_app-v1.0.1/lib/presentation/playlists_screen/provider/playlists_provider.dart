import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/playlists_screen/models/playlists_model.dart';import '../models/playlists_item_model.dart';/// A provider class for the PlaylistsScreen.
///
/// This provider manages the state of the PlaylistsScreen, including the
/// current playlistsModelObj

// ignore_for_file: must_be_immutable
class PlaylistsProvider extends ChangeNotifier {PlaylistsModel playlistsModelObj = PlaylistsModel();

@override void dispose() { super.dispose(); } 
 }

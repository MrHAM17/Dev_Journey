import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/playlist_details_screen/models/playlist_details_model.dart';import '../models/playlistdetails_item_model.dart';/// A provider class for the PlaylistDetailsScreen.
///
/// This provider manages the state of the PlaylistDetailsScreen, including the
/// current playlistDetailsModelObj

// ignore_for_file: must_be_immutable
class PlaylistDetailsProvider extends ChangeNotifier {PlaylistDetailsModel playlistDetailsModelObj = PlaylistDetailsModel();

@override void dispose() { super.dispose(); } 
 }

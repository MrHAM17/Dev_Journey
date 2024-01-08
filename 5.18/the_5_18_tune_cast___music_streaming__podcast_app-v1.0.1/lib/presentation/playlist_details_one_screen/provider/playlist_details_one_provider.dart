import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/playlist_details_one_screen/models/playlist_details_one_model.dart';import '../models/playlistdetailsone_item_model.dart';/// A provider class for the PlaylistDetailsOneScreen.
///
/// This provider manages the state of the PlaylistDetailsOneScreen, including the
/// current playlistDetailsOneModelObj

// ignore_for_file: must_be_immutable
class PlaylistDetailsOneProvider extends ChangeNotifier {PlaylistDetailsOneModel playlistDetailsOneModelObj = PlaylistDetailsOneModel();

@override void dispose() { super.dispose(); } 
 }

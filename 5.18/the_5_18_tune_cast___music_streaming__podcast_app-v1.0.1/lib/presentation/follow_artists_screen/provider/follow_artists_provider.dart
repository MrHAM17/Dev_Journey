import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/follow_artists_screen/models/follow_artists_model.dart';import '../models/followartists_item_model.dart';/// A provider class for the FollowArtistsScreen.
///
/// This provider manages the state of the FollowArtistsScreen, including the
/// current followArtistsModelObj

// ignore_for_file: must_be_immutable
class FollowArtistsProvider extends ChangeNotifier {FollowArtistsModel followArtistsModelObj = FollowArtistsModel();

@override void dispose() { super.dispose(); } 
 }

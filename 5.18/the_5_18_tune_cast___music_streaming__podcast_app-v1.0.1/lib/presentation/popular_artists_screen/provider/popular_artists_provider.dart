import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/popular_artists_screen/models/popular_artists_model.dart';import '../models/popularartists_item_model.dart';/// A provider class for the PopularArtistsScreen.
///
/// This provider manages the state of the PopularArtistsScreen, including the
/// current popularArtistsModelObj

// ignore_for_file: must_be_immutable
class PopularArtistsProvider extends ChangeNotifier {PopularArtistsModel popularArtistsModelObj = PopularArtistsModel();

@override void dispose() { super.dispose(); } 
 }

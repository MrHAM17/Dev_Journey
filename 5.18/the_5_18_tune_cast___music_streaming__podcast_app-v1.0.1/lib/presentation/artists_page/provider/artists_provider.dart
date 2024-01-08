import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/artists_page/models/artists_model.dart';import '../models/artists1_item_model.dart';/// A provider class for the ArtistsPage.
///
/// This provider manages the state of the ArtistsPage, including the
/// current artistsModelObj

// ignore_for_file: must_be_immutable
class ArtistsProvider extends ChangeNotifier {ArtistsModel artistsModelObj = ArtistsModel();

@override void dispose() { super.dispose(); } 
 }

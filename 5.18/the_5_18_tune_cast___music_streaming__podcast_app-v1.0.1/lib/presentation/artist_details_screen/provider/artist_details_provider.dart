import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/artist_details_screen/models/artist_details_model.dart';import '../models/artistdetails_item_model.dart';/// A provider class for the ArtistDetailsScreen.
///
/// This provider manages the state of the ArtistDetailsScreen, including the
/// current artistDetailsModelObj

// ignore_for_file: must_be_immutable
class ArtistDetailsProvider extends ChangeNotifier {ArtistDetailsModel artistDetailsModelObj = ArtistDetailsModel();

@override void dispose() { super.dispose(); } 
 }

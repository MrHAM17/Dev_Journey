import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/song_details_screen/models/song_details_model.dart';import '../models/songdetails_item_model.dart';/// A provider class for the SongDetailsScreen.
///
/// This provider manages the state of the SongDetailsScreen, including the
/// current songDetailsModelObj

// ignore_for_file: must_be_immutable
class SongDetailsProvider extends ChangeNotifier {SongDetailsModel songDetailsModelObj = SongDetailsModel();

@override void dispose() { super.dispose(); } 
 }

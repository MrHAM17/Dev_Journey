import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_screen/models/profile_details_model.dart';import '../models/profiledetails_item_model.dart';/// A provider class for the ProfileDetailsScreen.
///
/// This provider manages the state of the ProfileDetailsScreen, including the
/// current profileDetailsModelObj

// ignore_for_file: must_be_immutable
class ProfileDetailsProvider extends ChangeNotifier {ProfileDetailsModel profileDetailsModelObj = ProfileDetailsModel();

@override void dispose() { super.dispose(); } 
 }

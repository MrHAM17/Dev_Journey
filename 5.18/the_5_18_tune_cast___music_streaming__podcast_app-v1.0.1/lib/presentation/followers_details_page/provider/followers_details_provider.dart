import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_page/models/followers_details_model.dart';import '../models/ninetyfive_item_model.dart';import '../models/following1_item_model.dart';/// A provider class for the FollowersDetailsPage.
///
/// This provider manages the state of the FollowersDetailsPage, including the
/// current followersDetailsModelObj

// ignore_for_file: must_be_immutable
class FollowersDetailsProvider extends ChangeNotifier {FollowersDetailsModel followersDetailsModelObj = FollowersDetailsModel();

@override void dispose() { super.dispose(); } 
 }

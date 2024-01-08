import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_one_screen/models/profile_details_one_model.dart';import '../models/profiledetailsone_item_model.dart';/// A provider class for the ProfileDetailsOneScreen.
///
/// This provider manages the state of the ProfileDetailsOneScreen, including the
/// current profileDetailsOneModelObj

// ignore_for_file: must_be_immutable
class ProfileDetailsOneProvider extends ChangeNotifier {ProfileDetailsOneModel profileDetailsOneModelObj = ProfileDetailsOneModel();

@override void dispose() { super.dispose(); } 
 }

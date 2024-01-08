import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/profile_page/models/profile_model.dart';import '../models/autolayoutvertical_item_model.dart';/// A provider class for the ProfilePage.
///
/// This provider manages the state of the ProfilePage, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {ProfileModel profileModelObj = ProfileModel();

@override void dispose() { super.dispose(); } 
 }

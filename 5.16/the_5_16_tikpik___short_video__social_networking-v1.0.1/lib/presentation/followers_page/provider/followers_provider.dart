import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/followers_page/models/followers_model.dart';import '../models/followers_item_model.dart';/// A provider class for the FollowersPage.
///
/// This provider manages the state of the FollowersPage, including the
/// current followersModelObj

// ignore_for_file: must_be_immutable
class FollowersProvider extends ChangeNotifier {FollowersModel followersModelObj = FollowersModel();

@override void dispose() { super.dispose(); } 
 }

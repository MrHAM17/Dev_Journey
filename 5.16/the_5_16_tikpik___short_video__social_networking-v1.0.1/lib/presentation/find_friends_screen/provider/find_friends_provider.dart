import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/find_friends_screen/models/find_friends_model.dart';import '../models/findfriends_item_model.dart';/// A provider class for the FindFriendsScreen.
///
/// This provider manages the state of the FindFriendsScreen, including the
/// current findFriendsModelObj

// ignore_for_file: must_be_immutable
class FindFriendsProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

FindFriendsModel findFriendsModelObj = FindFriendsModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }

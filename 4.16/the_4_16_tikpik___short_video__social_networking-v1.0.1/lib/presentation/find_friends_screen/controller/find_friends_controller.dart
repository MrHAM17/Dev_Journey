import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/find_friends_screen/models/find_friends_model.dart';import 'package:flutter/material.dart';/// A controller class for the FindFriendsScreen.
///
/// This class manages the state of the FindFriendsScreen, including the
/// current findFriendsModelObj
class FindFriendsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<FindFriendsModel> findFriendsModelObj = FindFriendsModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }

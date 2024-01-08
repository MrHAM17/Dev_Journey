import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/my_friends_screen/models/my_friends_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyFriendsScreen.
///
/// This class manages the state of the MyFriendsScreen, including the
/// current myFriendsModelObj
class MyFriendsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MyFriendsModel> myFriendsModelObj = MyFriendsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

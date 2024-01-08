import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/my_friends_screen/models/my_friends_model.dart';
import '../models/myfriends_item_model.dart';

/// A provider class for the MyFriendsScreen.
///
/// This provider manages the state of the MyFriendsScreen, including the
/// current myFriendsModelObj

// ignore_for_file: must_be_immutable
class MyFriendsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  MyFriendsModel myFriendsModelObj = MyFriendsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}

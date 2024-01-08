import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/user_profile_tab_container_screen/models/user_profile_tab_container_model.dart';

/// A provider class for the UserProfileTabContainerScreen.
///
/// This provider manages the state of the UserProfileTabContainerScreen, including the
/// current userProfileTabContainerModelObj

// ignore_for_file: must_be_immutable
class UserProfileTabContainerProvider extends ChangeNotifier {
  UserProfileTabContainerModel userProfileTabContainerModelObj =
      UserProfileTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

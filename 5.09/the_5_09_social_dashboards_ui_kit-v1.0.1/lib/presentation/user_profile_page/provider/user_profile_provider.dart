import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/user_profile_page/models/user_profile_model.dart';

/// A provider class for the UserProfilePage.
///
/// This provider manages the state of the UserProfilePage, including the
/// current userProfileModelObj
class UserProfileProvider extends ChangeNotifier {
  UserProfileModel userProfileModelObj = UserProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}

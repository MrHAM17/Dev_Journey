import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/user_profile_page/models/user_profile_model.dart';

/// A controller class for the UserProfilePage.
///
/// This class manages the state of the UserProfilePage, including the
/// current userProfileModelObj
class UserProfileController extends GetxController {
  UserProfileController(this.userProfileModelObj);

  Rx<UserProfileModel> userProfileModelObj;
}

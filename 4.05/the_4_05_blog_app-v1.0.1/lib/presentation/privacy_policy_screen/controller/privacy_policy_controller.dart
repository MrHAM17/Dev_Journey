import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/privacy_policy_screen/models/privacy_policy_model.dart';

/// A controller class for the PrivacyPolicyScreen.
///
/// This class manages the state of the PrivacyPolicyScreen, including the
/// current privacyPolicyModelObj
class PrivacyPolicyController extends GetxController {
  Rx<PrivacyPolicyModel> privacyPolicyModelObj = PrivacyPolicyModel().obs;
}

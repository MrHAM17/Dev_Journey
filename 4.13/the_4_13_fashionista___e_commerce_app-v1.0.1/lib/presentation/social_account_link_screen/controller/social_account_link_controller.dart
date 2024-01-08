import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/social_account_link_screen/models/social_account_link_model.dart';

/// A controller class for the SocialAccountLinkScreen.
///
/// This class manages the state of the SocialAccountLinkScreen, including the
/// current socialAccountLinkModelObj
class SocialAccountLinkController extends GetxController {
  Rx<SocialAccountLinkModel> socialAccountLinkModelObj =
      SocialAccountLinkModel().obs;

  @override
  void onReady() {
    // TODO: implement Actions
  }
}

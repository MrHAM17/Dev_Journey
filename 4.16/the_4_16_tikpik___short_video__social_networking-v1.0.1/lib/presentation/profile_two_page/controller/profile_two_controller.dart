import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/profile_two_page/models/profile_two_model.dart';/// A controller class for the ProfileTwoPage.
///
/// This class manages the state of the ProfileTwoPage, including the
/// current profileTwoModelObj
class ProfileTwoController extends GetxController {ProfileTwoController(this.profileTwoModelObj);

Rx<ProfileTwoModel> profileTwoModelObj;

@override void onReady() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }

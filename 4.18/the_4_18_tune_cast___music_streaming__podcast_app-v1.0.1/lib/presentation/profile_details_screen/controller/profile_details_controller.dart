import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/profile_details_screen/models/profile_details_model.dart';/// A controller class for the ProfileDetailsScreen.
///
/// This class manages the state of the ProfileDetailsScreen, including the
/// current profileDetailsModelObj
class ProfileDetailsController extends GetxController {Rx<ProfileDetailsModel> profileDetailsModelObj = ProfileDetailsModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.followersDetailsTabContainerScreen, ); } 
 }

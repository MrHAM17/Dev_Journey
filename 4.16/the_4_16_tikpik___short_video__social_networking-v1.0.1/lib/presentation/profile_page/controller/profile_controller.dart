import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/profile_page/models/profile_model.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/total_likes_dialog.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/controller/total_likes_controller.dart';/// A controller class for the ProfilePage.
///
/// This class manages the state of the ProfilePage, including the
/// current profileModelObj
class ProfileController extends GetxController {ProfileController(this.profileModelObj);

Rx<ProfileModel> profileModelObj;

@override void onReady() { Get.toNamed(AppRoutes.followersTabContainerScreen, );Get.toNamed(AppRoutes.sendMessageScreen, );Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:TotalLikesDialog(Get.put(TotalLikesController(),),),)); } 
 }

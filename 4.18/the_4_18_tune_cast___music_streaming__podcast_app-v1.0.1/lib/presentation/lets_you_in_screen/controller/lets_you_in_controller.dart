import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/lets_you_in_screen/models/lets_you_in_model.dart';/// A controller class for the LetsYouInScreen.
///
/// This class manages the state of the LetsYouInScreen, including the
/// current letsYouInModelObj
class LetsYouInController extends GetxController {Rx<LetsYouInModel> letsYouInModelObj = LetsYouInModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.signInScreen, );Get.toNamed(AppRoutes.signUpScreen, ); } 
 }

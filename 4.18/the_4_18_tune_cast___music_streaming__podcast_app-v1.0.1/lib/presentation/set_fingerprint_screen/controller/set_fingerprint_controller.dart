import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/set_fingerprint_screen/models/set_fingerprint_model.dart';/// A controller class for the SetFingerprintScreen.
///
/// This class manages the state of the SetFingerprintScreen, including the
/// current setFingerprintModelObj
class SetFingerprintController extends GetxController {Rx<SetFingerprintModel> setFingerprintModelObj = SetFingerprintModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.followArtistsScreen, );Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }

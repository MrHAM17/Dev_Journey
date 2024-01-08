import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/onboarding_three_screen/models/onboarding_three_model.dart';/// A controller class for the OnboardingThreeScreen.
///
/// This class manages the state of the OnboardingThreeScreen, including the
/// current onboardingThreeModelObj
class OnboardingThreeController extends GetxController {Rx<OnboardingThreeModel> onboardingThreeModelObj = OnboardingThreeModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.letSYouInScreen, ); } 
 }

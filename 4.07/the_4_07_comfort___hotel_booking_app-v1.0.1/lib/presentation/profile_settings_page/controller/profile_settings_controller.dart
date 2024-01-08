import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/profile_settings_page/models/profile_settings_model.dart';/// A controller class for the ProfileSettingsPage.
///
/// This class manages the state of the ProfileSettingsPage, including the
/// current profileSettingsModelObj
class ProfileSettingsController extends GetxController {ProfileSettingsController(this.profileSettingsModelObj);

Rx<ProfileSettingsModel> profileSettingsModelObj;

Rx<bool> isSelectedSwitch = false.obs;

@override void onReady() { // TODO: implement Actions
Get.toNamed(AppRoutes.editProfileScreen, );Get.toNamed(AppRoutes.notificationSettingsScreen, );Get.toNamed(AppRoutes.securityScreen, ); } 
 }

import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/home_screen_page/models/home_screen_model.dart';/// A controller class for the HomeScreenPage.
///
/// This class manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj
class HomeScreenController extends GetxController {HomeScreenController(this.homeScreenModelObj);

Rx<HomeScreenModel> homeScreenModelObj;

@override void onReady() { // TODO: implement Actions
Get.toNamed(AppRoutes.searchPage, );// TODO: implement Actions
Get.toNamed(AppRoutes.profileSettingsPage, ); } 
 }

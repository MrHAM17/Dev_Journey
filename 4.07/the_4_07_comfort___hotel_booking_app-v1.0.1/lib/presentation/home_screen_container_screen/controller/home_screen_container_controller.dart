import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/home_screen_container_screen/models/home_screen_container_model.dart';/// A controller class for the HomeScreenContainerScreen.
///
/// This class manages the state of the HomeScreenContainerScreen, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {Rx<HomeScreenContainerModel> homeScreenContainerModelObj = HomeScreenContainerModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.notificationsScreen, ); } 
 }

import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/home_alarm_container_screen/models/home_alarm_container_model.dart';/// A controller class for the HomeAlarmContainerScreen.
///
/// This class manages the state of the HomeAlarmContainerScreen, including the
/// current homeAlarmContainerModelObj
class HomeAlarmContainerController extends GetxController {Rx<HomeAlarmContainerModel> homeAlarmContainerModelObj = HomeAlarmContainerModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.notificationEmptyStatesScreen, ); } 
 }

import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/presentation/review_tab_container_screen/models/review_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ReviewTabContainerScreen.
///
/// This class manages the state of the ReviewTabContainerScreen, including the
/// current reviewTabContainerModelObj
class ReviewTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ReviewTabContainerModel> reviewTabContainerModelObj = ReviewTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 6));

 }

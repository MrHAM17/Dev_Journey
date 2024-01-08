import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/reviews_tab_container_screen/models/reviews_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReviewsTabContainerScreen.
///
/// This class manages the state of the ReviewsTabContainerScreen, including the
/// current reviewsTabContainerModelObj
class ReviewsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ReviewsTabContainerModel> reviewsTabContainerModelObj =
      ReviewsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}

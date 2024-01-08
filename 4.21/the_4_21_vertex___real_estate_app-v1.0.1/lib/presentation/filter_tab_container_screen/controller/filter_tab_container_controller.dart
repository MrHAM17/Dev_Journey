import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_4_21_vertex___real_estate_app/presentation/filter_tab_container_screen/models/filter_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FilterTabContainerScreen.
///
/// This class manages the state of the FilterTabContainerScreen, including the
/// current filterTabContainerModelObj
class FilterTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<FilterTabContainerModel> filterTabContainerModelObj =
      FilterTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}

import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/models/trending_sounds_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrendingSoundsTabContainerPage.
///
/// This class manages the state of the TrendingSoundsTabContainerPage, including the
/// current trendingSoundsTabContainerModelObj
class TrendingSoundsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TrendingSoundsTabContainerController(this.trendingSoundsTabContainerModelObj);

  Rx<TrendingSoundsTabContainerModel> trendingSoundsTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}

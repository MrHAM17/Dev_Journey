import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/statistics_tab_container_page/models/statistics_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StatisticsTabContainerPage.
///
/// This class manages the state of the StatisticsTabContainerPage, including the
/// current statisticsTabContainerModelObj
class StatisticsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  StatisticsTabContainerController(this.statisticsTabContainerModelObj);

  Rx<StatisticsTabContainerModel> statisticsTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in statisticsTabContainerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    statisticsTabContainerModelObj.value.dropdownItemList.refresh();
  }
}

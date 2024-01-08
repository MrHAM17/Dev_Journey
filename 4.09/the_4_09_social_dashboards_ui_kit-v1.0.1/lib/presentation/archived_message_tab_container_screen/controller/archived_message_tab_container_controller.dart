import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/archived_message_tab_container_screen/models/archived_message_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ArchivedMessageTabContainerScreen.
///
/// This class manages the state of the ArchivedMessageTabContainerScreen, including the
/// current archivedMessageTabContainerModelObj
class ArchivedMessageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ArchivedMessageTabContainerModel> archivedMessageTabContainerModelObj =
      ArchivedMessageTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}

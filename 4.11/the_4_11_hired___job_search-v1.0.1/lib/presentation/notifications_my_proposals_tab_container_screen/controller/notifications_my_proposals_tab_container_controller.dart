import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/notifications_my_proposals_tab_container_screen/models/notifications_my_proposals_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NotificationsMyProposalsTabContainerScreen.
///
/// This class manages the state of the NotificationsMyProposalsTabContainerScreen, including the
/// current notificationsMyProposalsTabContainerModelObj
class NotificationsMyProposalsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<NotificationsMyProposalsTabContainerModel>
      notificationsMyProposalsTabContainerModelObj =
      NotificationsMyProposalsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}

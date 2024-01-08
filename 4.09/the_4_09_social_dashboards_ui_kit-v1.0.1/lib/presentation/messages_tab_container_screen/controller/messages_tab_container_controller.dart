import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/messages_tab_container_screen/models/messages_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessagesTabContainerScreen.
///
/// This class manages the state of the MessagesTabContainerScreen, including the
/// current messagesTabContainerModelObj
class MessagesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MessagesTabContainerModel> messagesTabContainerModelObj =
      MessagesTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}

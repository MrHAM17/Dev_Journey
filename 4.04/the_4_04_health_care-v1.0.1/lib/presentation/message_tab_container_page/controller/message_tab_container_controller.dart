import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/presentation/message_tab_container_page/models/message_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessageTabContainerPage.
///
/// This class manages the state of the MessageTabContainerPage, including the
/// current messageTabContainerModelObj
class MessageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MessageTabContainerController(this.messageTabContainerModelObj);

  Rx<MessageTabContainerModel> messageTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}

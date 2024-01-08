import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/message_tab_container_page/models/message_tab_container_model.dart';

/// A provider class for the MessageTabContainerPage.
///
/// This provider manages the state of the MessageTabContainerPage, including the
/// current messageTabContainerModelObj
class MessageTabContainerProvider extends ChangeNotifier {
  MessageTabContainerModel messageTabContainerModelObj =
      MessageTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

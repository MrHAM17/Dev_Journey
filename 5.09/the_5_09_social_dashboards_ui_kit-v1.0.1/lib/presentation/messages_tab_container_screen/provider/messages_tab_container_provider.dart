import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/messages_tab_container_screen/models/messages_tab_container_model.dart';

/// A provider class for the MessagesTabContainerScreen.
///
/// This provider manages the state of the MessagesTabContainerScreen, including the
/// current messagesTabContainerModelObj
class MessagesTabContainerProvider extends ChangeNotifier {
  MessagesTabContainerModel messagesTabContainerModelObj =
      MessagesTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

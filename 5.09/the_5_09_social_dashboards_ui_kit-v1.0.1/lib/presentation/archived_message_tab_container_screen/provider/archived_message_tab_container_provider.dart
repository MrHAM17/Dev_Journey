import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/archived_message_tab_container_screen/models/archived_message_tab_container_model.dart';

/// A provider class for the ArchivedMessageTabContainerScreen.
///
/// This provider manages the state of the ArchivedMessageTabContainerScreen, including the
/// current archivedMessageTabContainerModelObj
class ArchivedMessageTabContainerProvider extends ChangeNotifier {
  ArchivedMessageTabContainerModel archivedMessageTabContainerModelObj =
      ArchivedMessageTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

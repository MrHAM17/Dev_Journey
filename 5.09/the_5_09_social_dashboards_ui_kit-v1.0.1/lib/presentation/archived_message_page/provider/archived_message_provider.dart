import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/archived_message_page/models/archived_message_model.dart';
import '../models/archivedmessage_item_model.dart';

/// A provider class for the ArchivedMessagePage.
///
/// This provider manages the state of the ArchivedMessagePage, including the
/// current archivedMessageModelObj

// ignore_for_file: must_be_immutable
class ArchivedMessageProvider extends ChangeNotifier {
  ArchivedMessageModel archivedMessageModelObj = ArchivedMessageModel();

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/group_chat_bottomsheet/models/group_chat_model.dart';

/// A provider class for the GroupChatBottomsheet.
///
/// This provider manages the state of the GroupChatBottomsheet, including the
/// current groupChatModelObj

// ignore_for_file: must_be_immutable
class GroupChatProvider extends ChangeNotifier {
  GroupChatModel groupChatModelObj = GroupChatModel();

  @override
  void dispose() {
    super.dispose();
  }
}

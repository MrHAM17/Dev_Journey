import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/archivedmessage_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/archived_message_page/models/archived_message_model.dart';
part 'archived_message_state.dart';

final archivedMessageNotifier = StateNotifierProvider<ArchivedMessageNotifier,
    ArchivedMessageState>((ref) => ArchivedMessageNotifier(ArchivedMessageState(
        archivedMessageModelObj: ArchivedMessageModel(archivedmessageItemList: [
      ArchivedmessageItemModel(
          image: ImageConstant.imgPlay,
          image1: ImageConstant.imgImage28x28,
          more: "+9",
          username: "Close Friends",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1"),
      ArchivedmessageItemModel(
          image: ImageConstant.imgPlay,
          image1: ImageConstant.imgImage11,
          more: "+9",
          username: "Close Friends",
          message: "Thank you for sharing"),
      ArchivedmessageItemModel(
          username: "Close Friends",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1")
    ]))));

/// A notifier that manages the state of a ArchivedMessage according to the event that is dispatched to it.
class ArchivedMessageNotifier extends StateNotifier<ArchivedMessageState> {
  ArchivedMessageNotifier(ArchivedMessageState state) : super(state);
}

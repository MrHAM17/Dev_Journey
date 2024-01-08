import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/category_item_model.dart';
import '../models/list_item_model.dart';
import '../models/samuelella_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/notification_list_page/models/notification_list_model.dart';
part 'notification_list_state.dart';

final notificationListNotifier =
    StateNotifierProvider<NotificationListNotifier, NotificationListState>(
  (ref) => NotificationListNotifier(NotificationListState(
    notificationListModelObj: NotificationListModel(categoryItemList: [
      CategoryItemModel(all: "All"),
      CategoryItemModel(all: "Review"),
      CategoryItemModel(all: " Sold"),
      CategoryItemModel(all: "House")
    ], listItemList: [
      ListItemModel(
          emmettPerry: ImageConstant.imgShape50x50,
          emmettPerry1: "Emmett Perry",
          time: "10 mins ago")
    ], samuelellaItemList: List.generate(1, (index) => SamuelellaItemModel())),
  )),
);

/// A notifier that manages the state of a NotificationList according to the event that is dispatched to it.
class NotificationListNotifier extends StateNotifier<NotificationListState> {
  NotificationListNotifier(NotificationListState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/today_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/notification_screen/models/notification_model.dart';
part 'notification_state.dart';

final notificationNotifier =
    StateNotifierProvider<NotificationNotifier, NotificationState>(
        (ref) => NotificationNotifier(NotificationState(
                notificationModelObj: NotificationModel(todayItemList: [
              TodayItemModel(groupBy: "Today"),
              TodayItemModel(groupBy: "Today"),
              TodayItemModel(groupBy: "Today"),
              TodayItemModel(groupBy: "Yesterday"),
              TodayItemModel(groupBy: "Yesterday"),
              TodayItemModel(groupBy: "Yesterday")
            ]))));

/// A notifier that manages the state of a Notification according to the event that is dispatched to it.
class NotificationNotifier extends StateNotifier<NotificationState> {
  NotificationNotifier(NotificationState state) : super(state);
}

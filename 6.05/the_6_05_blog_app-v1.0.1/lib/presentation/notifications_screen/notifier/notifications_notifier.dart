import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notifications_item_model.dart';
import 'package:the_6_05_blog_app/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_state.dart';

final notificationsNotifier =
    StateNotifierProvider<NotificationsNotifier, NotificationsState>((ref) =>
        NotificationsNotifier(NotificationsState(
            notificationsModelObj: NotificationsModel(
                notificationsItemList:
                    List.generate(3, (index) => NotificationsItemModel())))));

/// A notifier that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(NotificationsState state) : super(state);
}

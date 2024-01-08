import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_state.dart';

final notificationsNotifier =
    StateNotifierProvider<NotificationsNotifier, NotificationsState>((ref) =>
        NotificationsNotifier(
            NotificationsState(notificationsModelObj: NotificationsModel())));

/// A notifier that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(NotificationsState state) : super(state);
}

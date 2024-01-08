import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/notification_list_tab_container_screen/models/notification_list_tab_container_model.dart';part 'notification_list_tab_container_state.dart';final notificationListTabContainerNotifier = StateNotifierProvider<NotificationListTabContainerNotifier, NotificationListTabContainerState>((ref) => NotificationListTabContainerNotifier(NotificationListTabContainerState(notificationListTabContainerModelObj: NotificationListTabContainerModel())));
/// A notifier that manages the state of a NotificationListTabContainer according to the event that is dispatched to it.
class NotificationListTabContainerNotifier extends StateNotifier<NotificationListTabContainerState> {NotificationListTabContainerNotifier(NotificationListTabContainerState state) : super(state);

 }

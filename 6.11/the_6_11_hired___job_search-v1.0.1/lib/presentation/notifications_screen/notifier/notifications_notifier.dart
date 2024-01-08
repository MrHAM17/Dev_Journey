import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notifications_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_state.dart';

final notificationsNotifier = StateNotifierProvider<NotificationsNotifier,
    NotificationsState>((ref) => NotificationsNotifier(NotificationsState(
        notificationsModelObj: NotificationsModel(notificationsItemList: [
      NotificationsItemModel(newPost: "New Post"),
      NotificationsItemModel(newPost: "Interview Invited"),
      NotificationsItemModel(newPost: "Message"),
      NotificationsItemModel(newPost: "New Post Job")
    ]))));

/// A notifier that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(NotificationsState state) : super(state);

  void changeSwitchBox1(
    int index,
    bool value,
  ) {
    List<NotificationsItemModel> newList = List<NotificationsItemModel>.from(
        state.notificationsModelObj!.notificationsItemList);
    newList[index] = newList[index].copyWith(isSelectedSwitch: value);
    state = state.copyWith(
        notificationsModelObj: state.notificationsModelObj
            ?.copyWith(notificationsItemList: newList));
  }
}

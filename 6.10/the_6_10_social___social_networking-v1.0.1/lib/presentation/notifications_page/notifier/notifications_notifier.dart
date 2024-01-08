import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notifications_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/notifications_page/models/notifications_model.dart';
part 'notifications_state.dart';

final notificationsNotifier = StateNotifierProvider<NotificationsNotifier,
    NotificationsState>((ref) => NotificationsNotifier(NotificationsState(
        notificationsModelObj: NotificationsModel(notificationsItemList: [
      NotificationsItemModel(
          image: ImageConstant.imgEllipse22,
          kevinHasFollowed: "Kevin has followed you",
          duration: "1 hour ago"),
      NotificationsItemModel(
          image: ImageConstant.imgEllipse2254x52,
          kevinHasFollowed:
              "Arman has commented on your story\n “hey there” to your timeline",
          duration: "2 hours ago"),
      NotificationsItemModel(image: ImageConstant.imgEllipse221),
      NotificationsItemModel(
          image: ImageConstant.imgEllipse222,
          kevinHasFollowed:
              "Arman has commented on your story\n “hey there” to your timeline",
          duration: "2 hours ago"),
      NotificationsItemModel(
          image: ImageConstant.imgEllipse22,
          kevinHasFollowed:
              "Arman has commented on your story\n “hey there” to your timeline",
          duration: "2 hours ago")
    ]))));

/// A notifier that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(NotificationsState state) : super(state);
}

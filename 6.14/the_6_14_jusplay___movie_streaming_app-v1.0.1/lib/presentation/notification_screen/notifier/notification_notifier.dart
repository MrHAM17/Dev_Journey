import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notification_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/notification_screen/models/notification_model.dart';
part 'notification_state.dart';

final notificationNotifier = StateNotifierProvider<NotificationNotifier,
    NotificationState>((ref) => NotificationNotifier(NotificationState(
        notificationModelObj: NotificationModel(notificationItemList: [
      NotificationItemModel(
          duration: "let's get 100% cashback valid only 6 hours",
          duration1: "10 minutes ago"),
      NotificationItemModel(
          duration:
              "long holiday? Let's watch and relax with fun movies on Movistar",
          duration1: "35 minutes ago"),
      NotificationItemModel(
          duration: "Want to get 3 months of watching free movies on Movistar",
          duration1: "1 hour ago"),
      NotificationItemModel(
          duration:
              "Congrats, you got a 50 discount voucher valid for up to 7 days",
          duration1: "20 hours ago"),
      NotificationItemModel(
          duration: "let's get 50% cashback valid only 12 hours",
          duration1: "15 April 2022"),
      NotificationItemModel(
          duration: "let's get 70% cashback valid only 24 hours",
          duration1: "14 April 2022")
    ]))));

/// A notifier that manages the state of a Notification according to the event that is dispatched to it.
class NotificationNotifier extends StateNotifier<NotificationState> {
  NotificationNotifier(NotificationState state) : super(state);
}

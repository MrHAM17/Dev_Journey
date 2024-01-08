import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notification_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/notification_screen/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

/// A bloc that manages the state of a Notification according to the event that is dispatched to it.
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj
            ?.copyWith(notificationItemList: fillNotificationItemList())));
  }

  List<NotificationItemModel> fillNotificationItemList() {
    return [
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
    ];
  }
}

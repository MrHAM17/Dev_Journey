import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationsgeneral_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/notifications_general_page/models/notifications_general_model.dart';
part 'notifications_general_state.dart';

final notificationsGeneralNotifier = StateNotifierProvider<
        NotificationsGeneralNotifier, NotificationsGeneralState>(
    (ref) => NotificationsGeneralNotifier(NotificationsGeneralState(
            notificationsGeneralModelObj:
                NotificationsGeneralModel(notificationsgeneralItemList: [
          NotificationsgeneralItemModel(
              bag: ImageConstant.imgBag,
              juniorUIDesigner: "Junior UI Designer ",
              shopeeSg: "Shopee Sg",
              time: "32 Min ago",
              loremIpsumDolor:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          NotificationsgeneralItemModel(
              bag: ImageConstant.imgBag,
              juniorUIDesigner: "Senior UI Designer ",
              shopeeSg: "Shopee Sg",
              time: "32 Min ago",
              loremIpsumDolor:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          NotificationsgeneralItemModel(
              bag: ImageConstant.imgSettingsRed800,
              juniorUIDesigner: "UI UX Designer",
              shopeeSg: "Shell",
              time: "32 Min ago",
              loremIpsumDolor:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
          NotificationsgeneralItemModel(
              bag: ImageConstant.imgClose,
              juniorUIDesigner: "UI Designer ",
              shopeeSg: "Cardano ",
              time: "32 Min ago",
              loremIpsumDolor:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        ]))));

/// A notifier that manages the state of a NotificationsGeneral according to the event that is dispatched to it.
class NotificationsGeneralNotifier
    extends StateNotifier<NotificationsGeneralState> {
  NotificationsGeneralNotifier(NotificationsGeneralState state) : super(state);
}

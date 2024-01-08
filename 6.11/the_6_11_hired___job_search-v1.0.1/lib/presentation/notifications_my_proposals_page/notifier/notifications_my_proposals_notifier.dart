import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationsmyproposals_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/notifications_my_proposals_page/models/notifications_my_proposals_model.dart';
part 'notifications_my_proposals_state.dart';

final notificationsMyProposalsNotifier = StateNotifierProvider<
        NotificationsMyProposalsNotifier, NotificationsMyProposalsState>(
    (ref) => NotificationsMyProposalsNotifier(NotificationsMyProposalsState(
            notificationsMyProposalsModelObj: NotificationsMyProposalsModel(
                notificationsmyproposalsItemList: [
              NotificationsmyproposalsItemModel(
                  iconButton: ImageConstant.imgGroupRed800,
                  seniorUIUXDesigner: "Senior UI/UX Designer",
                  smallLabelRegular: "Shell"),
              NotificationsmyproposalsItemModel(
                  iconButton: ImageConstant.imgGroup,
                  seniorUIUXDesigner: "Senior UI/UX Designer",
                  smallLabelRegular: "Cardano "),
              NotificationsmyproposalsItemModel(
                  iconButton: ImageConstant.imgLogo,
                  seniorUIUXDesigner: "Senior UI/UX Designer",
                  smallLabelRegular: "Shopee Sg")
            ]))));

/// A notifier that manages the state of a NotificationsMyProposals according to the event that is dispatched to it.
class NotificationsMyProposalsNotifier
    extends StateNotifier<NotificationsMyProposalsState> {
  NotificationsMyProposalsNotifier(NotificationsMyProposalsState state)
      : super(state);
}

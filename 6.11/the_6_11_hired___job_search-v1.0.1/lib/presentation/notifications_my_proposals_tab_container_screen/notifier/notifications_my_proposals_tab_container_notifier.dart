import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/notifications_my_proposals_tab_container_screen/models/notifications_my_proposals_tab_container_model.dart';
part 'notifications_my_proposals_tab_container_state.dart';

final notificationsMyProposalsTabContainerNotifier = StateNotifierProvider<
        NotificationsMyProposalsTabContainerNotifier,
        NotificationsMyProposalsTabContainerState>(
    (ref) => NotificationsMyProposalsTabContainerNotifier(
        NotificationsMyProposalsTabContainerState(
            notificationsMyProposalsTabContainerModelObj:
                NotificationsMyProposalsTabContainerModel())));

/// A notifier that manages the state of a NotificationsMyProposalsTabContainer according to the event that is dispatched to it.
class NotificationsMyProposalsTabContainerNotifier
    extends StateNotifier<NotificationsMyProposalsTabContainerState> {
  NotificationsMyProposalsTabContainerNotifier(
      NotificationsMyProposalsTabContainerState state)
      : super(state);
}

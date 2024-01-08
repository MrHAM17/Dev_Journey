import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/archived_message_tab_container_screen/models/archived_message_tab_container_model.dart';
part 'archived_message_tab_container_state.dart';

final archivedMessageTabContainerNotifier = StateNotifierProvider<
    ArchivedMessageTabContainerNotifier, ArchivedMessageTabContainerState>(
  (ref) => ArchivedMessageTabContainerNotifier(ArchivedMessageTabContainerState(
    archivedMessageTabContainerModelObj: ArchivedMessageTabContainerModel(),
  )),
);

/// A notifier that manages the state of a ArchivedMessageTabContainer according to the event that is dispatched to it.
class ArchivedMessageTabContainerNotifier
    extends StateNotifier<ArchivedMessageTabContainerState> {
  ArchivedMessageTabContainerNotifier(ArchivedMessageTabContainerState state)
      : super(state) {}
}

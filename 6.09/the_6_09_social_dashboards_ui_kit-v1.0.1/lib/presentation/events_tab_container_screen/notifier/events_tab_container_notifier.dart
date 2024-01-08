import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/events_tab_container_screen/models/events_tab_container_model.dart';
part 'events_tab_container_state.dart';

final eventsTabContainerNotifier =
    StateNotifierProvider<EventsTabContainerNotifier, EventsTabContainerState>(
        (ref) => EventsTabContainerNotifier(EventsTabContainerState(
            eventsTabContainerModelObj: EventsTabContainerModel())));

/// A notifier that manages the state of a EventsTabContainer according to the event that is dispatched to it.
class EventsTabContainerNotifier
    extends StateNotifier<EventsTabContainerState> {
  EventsTabContainerNotifier(EventsTabContainerState state) : super(state);
}

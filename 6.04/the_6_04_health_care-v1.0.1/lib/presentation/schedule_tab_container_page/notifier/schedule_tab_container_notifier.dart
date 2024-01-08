import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/schedule_tab_container_page/models/schedule_tab_container_model.dart';
part 'schedule_tab_container_state.dart';

final scheduleTabContainerNotifier = StateNotifierProvider<
    ScheduleTabContainerNotifier, ScheduleTabContainerState>(
  (ref) => ScheduleTabContainerNotifier(ScheduleTabContainerState(
    scheduleTabContainerModelObj: ScheduleTabContainerModel(),
  )),
);

/// A notifier that manages the state of a ScheduleTabContainer according to the event that is dispatched to it.
class ScheduleTabContainerNotifier
    extends StateNotifier<ScheduleTabContainerState> {
  ScheduleTabContainerNotifier(ScheduleTabContainerState state)
      : super(state) {}
}

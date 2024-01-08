import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/daily_new_tab_container_screen/models/daily_new_tab_container_model.dart';
part 'daily_new_tab_container_state.dart';

final dailyNewTabContainerNotifier = StateNotifierProvider<
    DailyNewTabContainerNotifier, DailyNewTabContainerState>(
  (ref) => DailyNewTabContainerNotifier(DailyNewTabContainerState(
    searchController: TextEditingController(),
    dailyNewTabContainerModelObj: DailyNewTabContainerModel(),
  )),
);

/// A notifier that manages the state of a DailyNewTabContainer according to the event that is dispatched to it.
class DailyNewTabContainerNotifier
    extends StateNotifier<DailyNewTabContainerState> {
  DailyNewTabContainerNotifier(DailyNewTabContainerState state)
      : super(state) {}
}

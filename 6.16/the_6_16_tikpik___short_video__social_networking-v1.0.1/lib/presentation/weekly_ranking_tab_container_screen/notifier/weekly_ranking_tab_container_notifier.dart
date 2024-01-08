import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/weekly_ranking_tab_container_screen/models/weekly_ranking_tab_container_model.dart';
part 'weekly_ranking_tab_container_state.dart';

final weeklyRankingTabContainerNotifier = StateNotifierProvider<
    WeeklyRankingTabContainerNotifier, WeeklyRankingTabContainerState>(
  (ref) => WeeklyRankingTabContainerNotifier(WeeklyRankingTabContainerState(
    weeklyRankingTabContainerModelObj: WeeklyRankingTabContainerModel(),
  )),
);

/// A notifier that manages the state of a WeeklyRankingTabContainer according to the event that is dispatched to it.
class WeeklyRankingTabContainerNotifier
    extends StateNotifier<WeeklyRankingTabContainerState> {
  WeeklyRankingTabContainerNotifier(WeeklyRankingTabContainerState state)
      : super(state) {}
}

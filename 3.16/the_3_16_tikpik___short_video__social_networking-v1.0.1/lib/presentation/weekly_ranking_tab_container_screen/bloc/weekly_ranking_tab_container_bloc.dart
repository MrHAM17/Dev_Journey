import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/weekly_ranking_tab_container_screen/models/weekly_ranking_tab_container_model.dart';
part 'weekly_ranking_tab_container_event.dart';
part 'weekly_ranking_tab_container_state.dart';

/// A bloc that manages the state of a WeeklyRankingTabContainer according to the event that is dispatched to it.
class WeeklyRankingTabContainerBloc extends Bloc<WeeklyRankingTabContainerEvent,
    WeeklyRankingTabContainerState> {
  WeeklyRankingTabContainerBloc(WeeklyRankingTabContainerState initialState)
      : super(initialState) {
    on<WeeklyRankingTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklyRankingTabContainerInitialEvent event,
    Emitter<WeeklyRankingTabContainerState> emit,
  ) async {}
}

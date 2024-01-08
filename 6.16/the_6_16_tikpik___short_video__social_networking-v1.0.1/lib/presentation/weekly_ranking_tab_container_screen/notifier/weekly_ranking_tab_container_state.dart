// ignore_for_file: must_be_immutable

part of 'weekly_ranking_tab_container_notifier.dart';

/// Represents the state of WeeklyRankingTabContainer in the application.
class WeeklyRankingTabContainerState extends Equatable {
  WeeklyRankingTabContainerState({this.weeklyRankingTabContainerModelObj});

  WeeklyRankingTabContainerModel? weeklyRankingTabContainerModelObj;

  @override
  List<Object?> get props => [
        weeklyRankingTabContainerModelObj,
      ];

  WeeklyRankingTabContainerState copyWith(
      {WeeklyRankingTabContainerModel? weeklyRankingTabContainerModelObj}) {
    return WeeklyRankingTabContainerState(
      weeklyRankingTabContainerModelObj: weeklyRankingTabContainerModelObj ??
          this.weeklyRankingTabContainerModelObj,
    );
  }
}

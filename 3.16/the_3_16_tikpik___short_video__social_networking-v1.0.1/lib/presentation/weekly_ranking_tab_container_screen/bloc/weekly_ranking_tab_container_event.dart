// ignore_for_file: must_be_immutable

part of 'weekly_ranking_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeeklyRankingTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WeeklyRankingTabContainerEvent extends Equatable {}

/// Event that is dispatched when the WeeklyRankingTabContainer widget is first created.
class WeeklyRankingTabContainerInitialEvent
    extends WeeklyRankingTabContainerEvent {
  @override
  List<Object?> get props => [];
}

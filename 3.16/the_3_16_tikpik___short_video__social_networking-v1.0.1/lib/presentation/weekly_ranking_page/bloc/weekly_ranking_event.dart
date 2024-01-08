// ignore_for_file: must_be_immutable

part of 'weekly_ranking_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WeeklyRanking widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WeeklyRankingEvent extends Equatable {}

/// Event that is dispatched when the WeeklyRanking widget is first created.
class WeeklyRankingInitialEvent extends WeeklyRankingEvent {
  @override
  List<Object?> get props => [];
}

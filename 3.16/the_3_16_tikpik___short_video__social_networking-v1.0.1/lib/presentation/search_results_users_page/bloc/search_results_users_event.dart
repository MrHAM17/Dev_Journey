// ignore_for_file: must_be_immutable

part of 'search_results_users_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsUsers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsUsersEvent extends Equatable {}

/// Event that is dispatched when the SearchResultsUsers widget is first created.
class SearchResultsUsersInitialEvent extends SearchResultsUsersEvent {
  @override
  List<Object?> get props => [];
}

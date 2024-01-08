// ignore_for_file: must_be_immutable

part of 'search_results_users_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsUsersTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsUsersTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchResultsUsersTabContainer widget is first created.
class SearchResultsUsersTabContainerInitialEvent
    extends SearchResultsUsersTabContainerEvent {
  @override
  List<Object?> get props => [];
}

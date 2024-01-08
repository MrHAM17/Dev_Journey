// ignore_for_file: must_be_immutable

part of 'search_not_found_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchNotFoundTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchNotFoundTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchNotFoundTabContainer widget is first created.
class SearchNotFoundTabContainerInitialEvent
    extends SearchNotFoundTabContainerEvent {
  @override
  List<Object?> get props => [];
}

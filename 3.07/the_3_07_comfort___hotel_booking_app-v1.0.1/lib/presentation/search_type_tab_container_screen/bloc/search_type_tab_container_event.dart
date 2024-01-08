// ignore_for_file: must_be_immutable

part of 'search_type_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTypeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTypeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchTypeTabContainer widget is first created.
class SearchTypeTabContainerInitialEvent extends SearchTypeTabContainerEvent {
  @override
  List<Object?> get props => [];
}

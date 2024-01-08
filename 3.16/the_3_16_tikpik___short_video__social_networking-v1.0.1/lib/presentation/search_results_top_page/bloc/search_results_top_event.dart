// ignore_for_file: must_be_immutable

part of 'search_results_top_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsTop widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsTopEvent extends Equatable {}

/// Event that is dispatched when the SearchResultsTop widget is first created.
class SearchResultsTopInitialEvent extends SearchResultsTopEvent {
  @override
  List<Object?> get props => [];
}

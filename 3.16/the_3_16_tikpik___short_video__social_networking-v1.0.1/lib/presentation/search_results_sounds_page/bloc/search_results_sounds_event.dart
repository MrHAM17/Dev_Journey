// ignore_for_file: must_be_immutable

part of 'search_results_sounds_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsSounds widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsSoundsEvent extends Equatable {}

/// Event that is dispatched when the SearchResultsSounds widget is first created.
class SearchResultsSoundsInitialEvent extends SearchResultsSoundsEvent {
  @override
  List<Object?> get props => [];
}

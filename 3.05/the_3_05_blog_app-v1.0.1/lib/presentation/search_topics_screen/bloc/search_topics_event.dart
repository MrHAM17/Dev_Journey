// ignore_for_file: must_be_immutable

part of 'search_topics_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTopics widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTopicsEvent extends Equatable {}

/// Event that is dispatched when the SearchTopics widget is first created.
class SearchTopicsInitialEvent extends SearchTopicsEvent {
  @override
  List<Object?> get props => [];
}

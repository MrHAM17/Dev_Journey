// ignore_for_file: must_be_immutable

part of 'interests_topics_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InterestsTopics widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InterestsTopicsEvent extends Equatable {}

/// Event that is dispatched when the InterestsTopics widget is first created.
class InterestsTopicsInitialEvent extends InterestsTopicsEvent {
  @override
  List<Object?> get props => [];
}

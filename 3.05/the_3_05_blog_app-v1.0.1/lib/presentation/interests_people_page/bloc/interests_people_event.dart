// ignore_for_file: must_be_immutable

part of 'interests_people_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InterestsPeople widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InterestsPeopleEvent extends Equatable {}

/// Event that is dispatched when the InterestsPeople widget is first created.
class InterestsPeopleInitialEvent extends InterestsPeopleEvent {
  @override
  List<Object?> get props => [];
}

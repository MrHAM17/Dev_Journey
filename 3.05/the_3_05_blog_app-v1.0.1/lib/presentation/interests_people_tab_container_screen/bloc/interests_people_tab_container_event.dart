// ignore_for_file: must_be_immutable

part of 'interests_people_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InterestsPeopleTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InterestsPeopleTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InterestsPeopleTabContainer widget is first created.
class InterestsPeopleTabContainerInitialEvent
    extends InterestsPeopleTabContainerEvent {
  @override
  List<Object?> get props => [];
}

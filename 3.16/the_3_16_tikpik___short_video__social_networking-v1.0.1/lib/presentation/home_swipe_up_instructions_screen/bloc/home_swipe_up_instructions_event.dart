// ignore_for_file: must_be_immutable

part of 'home_swipe_up_instructions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeSwipeUpInstructions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeSwipeUpInstructionsEvent extends Equatable {}

/// Event that is dispatched when the HomeSwipeUpInstructions widget is first created.
class HomeSwipeUpInstructionsInitialEvent extends HomeSwipeUpInstructionsEvent {
  @override
  List<Object?> get props => [];
}

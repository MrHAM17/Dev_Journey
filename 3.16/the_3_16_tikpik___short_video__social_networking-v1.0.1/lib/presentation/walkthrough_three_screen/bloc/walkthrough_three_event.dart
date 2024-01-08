// ignore_for_file: must_be_immutable

part of 'walkthrough_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalkthroughThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WalkthroughThreeEvent extends Equatable {}

/// Event that is dispatched when the WalkthroughThree widget is first created.
class WalkthroughThreeInitialEvent extends WalkthroughThreeEvent {
  @override
  List<Object?> get props => [];
}

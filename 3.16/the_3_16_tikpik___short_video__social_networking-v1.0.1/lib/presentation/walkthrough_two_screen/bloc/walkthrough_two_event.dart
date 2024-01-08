// ignore_for_file: must_be_immutable

part of 'walkthrough_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalkthroughTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WalkthroughTwoEvent extends Equatable {}

/// Event that is dispatched when the WalkthroughTwo widget is first created.
class WalkthroughTwoInitialEvent extends WalkthroughTwoEvent {
  @override
  List<Object?> get props => [];
}

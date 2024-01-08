// ignore_for_file: must_be_immutable

part of 'walkthrough_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalkthroughOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WalkthroughOneEvent extends Equatable {}

/// Event that is dispatched when the WalkthroughOne widget is first created.
class WalkthroughOneInitialEvent extends WalkthroughOneEvent {
  @override
  List<Object?> get props => [];
}

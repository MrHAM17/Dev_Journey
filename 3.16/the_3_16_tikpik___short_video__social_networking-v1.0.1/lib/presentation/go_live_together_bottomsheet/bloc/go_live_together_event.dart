// ignore_for_file: must_be_immutable

part of 'go_live_together_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GoLiveTogether widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GoLiveTogetherEvent extends Equatable {}

/// Event that is dispatched when the GoLiveTogether widget is first created.
class GoLiveTogetherInitialEvent extends GoLiveTogetherEvent {
  @override
  List<Object?> get props => [];
}

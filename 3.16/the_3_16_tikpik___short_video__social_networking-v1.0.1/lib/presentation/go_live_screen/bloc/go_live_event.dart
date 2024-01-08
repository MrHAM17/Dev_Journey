// ignore_for_file: must_be_immutable

part of 'go_live_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GoLive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GoLiveEvent extends Equatable {}

/// Event that is dispatched when the GoLive widget is first created.
class GoLiveInitialEvent extends GoLiveEvent {
  @override
  List<Object?> get props => [];
}

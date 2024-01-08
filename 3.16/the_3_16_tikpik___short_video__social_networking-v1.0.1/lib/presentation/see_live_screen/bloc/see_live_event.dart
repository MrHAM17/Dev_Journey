// ignore_for_file: must_be_immutable

part of 'see_live_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeeLive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeeLiveEvent extends Equatable {}

/// Event that is dispatched when the SeeLive widget is first created.
class SeeLiveInitialEvent extends SeeLiveEvent {
  @override
  List<Object?> get props => [];
}

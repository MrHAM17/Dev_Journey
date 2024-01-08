// ignore_for_file: must_be_immutable

part of 'suggested_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Suggested widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuggestedEvent extends Equatable {}

/// Event that is dispatched when the Suggested widget is first created.
class SuggestedInitialEvent extends SuggestedEvent {
  @override
  List<Object?> get props => [];
}

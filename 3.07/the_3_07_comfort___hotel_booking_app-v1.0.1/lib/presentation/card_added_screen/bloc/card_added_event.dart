// ignore_for_file: must_be_immutable

part of 'card_added_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CardAdded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CardAddedEvent extends Equatable {}

/// Event that is dispatched when the CardAdded widget is first created.
class CardAddedInitialEvent extends CardAddedEvent {
  @override
  List<Object?> get props => [];
}

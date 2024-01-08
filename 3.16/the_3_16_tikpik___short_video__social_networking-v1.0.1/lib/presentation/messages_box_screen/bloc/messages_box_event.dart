// ignore_for_file: must_be_immutable

part of 'messages_box_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessagesBox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessagesBoxEvent extends Equatable {}

/// Event that is dispatched when the MessagesBox widget is first created.
class MessagesBoxInitialEvent extends MessagesBoxEvent {
  @override
  List<Object?> get props => [];
}

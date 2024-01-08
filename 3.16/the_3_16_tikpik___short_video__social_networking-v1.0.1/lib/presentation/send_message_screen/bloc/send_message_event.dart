// ignore_for_file: must_be_immutable

part of 'send_message_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendMessage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendMessageEvent extends Equatable {}

/// Event that is dispatched when the SendMessage widget is first created.
class SendMessageInitialEvent extends SendMessageEvent {
  @override
  List<Object?> get props => [];
}

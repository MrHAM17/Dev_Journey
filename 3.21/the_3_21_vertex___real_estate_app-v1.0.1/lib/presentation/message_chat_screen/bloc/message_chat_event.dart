// ignore_for_file: must_be_immutable

part of 'message_chat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageChat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageChatEvent extends Equatable {}

/// Event that is dispatched when the MessageChat widget is first created.
class MessageChatInitialEvent extends MessageChatEvent {
  @override
  List<Object?> get props => [];
}

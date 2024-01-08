// ignore_for_file: must_be_immutable

part of 'type_message_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TypeMessage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TypeMessageEvent extends Equatable {}

/// Event that is dispatched when the TypeMessage widget is first created.
class TypeMessageInitialEvent extends TypeMessageEvent {
  @override
  List<Object?> get props => [];
}

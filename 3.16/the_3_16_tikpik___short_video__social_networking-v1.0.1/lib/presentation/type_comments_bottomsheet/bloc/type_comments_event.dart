// ignore_for_file: must_be_immutable

part of 'type_comments_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TypeComments widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TypeCommentsEvent extends Equatable {}

/// Event that is dispatched when the TypeComments widget is first created.
class TypeCommentsInitialEvent extends TypeCommentsEvent {
  @override
  List<Object?> get props => [];
}

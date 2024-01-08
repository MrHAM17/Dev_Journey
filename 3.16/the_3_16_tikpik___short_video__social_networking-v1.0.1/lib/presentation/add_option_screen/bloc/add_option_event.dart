// ignore_for_file: must_be_immutable

part of 'add_option_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddOption widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddOptionEvent extends Equatable {}

/// Event that is dispatched when the AddOption widget is first created.
class AddOptionInitialEvent extends AddOptionEvent {
  @override
  List<Object?> get props => [];
}

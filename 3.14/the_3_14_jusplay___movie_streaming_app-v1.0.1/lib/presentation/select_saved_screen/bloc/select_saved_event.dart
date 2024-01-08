// ignore_for_file: must_be_immutable

part of 'select_saved_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectSaved widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectSavedEvent extends Equatable {}

/// Event that is dispatched when the SelectSaved widget is first created.
class SelectSavedInitialEvent extends SelectSavedEvent {
  @override
  List<Object?> get props => [];
}

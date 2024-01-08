// ignore_for_file: must_be_immutable

part of 'saved_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SavedEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SavedEmptyEvent extends Equatable {}

/// Event that is dispatched when the SavedEmpty widget is first created.
class SavedEmptyInitialEvent extends SavedEmptyEvent {
  @override
  List<Object?> get props => [];
}

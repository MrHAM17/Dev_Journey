// ignore_for_file: must_be_immutable

part of 'no_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoHistoryEvent extends Equatable {}

/// Event that is dispatched when the NoHistory widget is first created.
class NoHistoryInitialEvent extends NoHistoryEvent {
  @override
  List<Object?> get props => [];
}

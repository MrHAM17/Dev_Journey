// ignore_for_file: must_be_immutable

part of 'lets_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LetsIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LetsInEvent extends Equatable {}

/// Event that is dispatched when the LetsIn widget is first created.
class LetsInInitialEvent extends LetsInEvent {
  @override
  List<Object?> get props => [];
}

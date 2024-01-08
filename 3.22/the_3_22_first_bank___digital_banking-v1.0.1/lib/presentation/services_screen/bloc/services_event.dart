// ignore_for_file: must_be_immutable

part of 'services_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Services widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServicesEvent extends Equatable {}

/// Event that is dispatched when the Services widget is first created.
class ServicesInitialEvent extends ServicesEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'my_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrderEvent extends Equatable {}

/// Event that is dispatched when the MyOrder widget is first created.
class MyOrderInitialEvent extends MyOrderEvent {
  @override
  List<Object?> get props => [];
}

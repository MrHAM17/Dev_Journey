// ignore_for_file: must_be_immutable

part of 'transactions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Transactions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsEvent extends Equatable {}

/// Event that is dispatched when the Transactions widget is first created.
class TransactionsInitialEvent extends TransactionsEvent {
  @override
  List<Object?> get props => [];
}

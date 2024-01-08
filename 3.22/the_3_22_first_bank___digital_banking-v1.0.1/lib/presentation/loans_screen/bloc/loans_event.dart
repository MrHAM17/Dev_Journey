// ignore_for_file: must_be_immutable

part of 'loans_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loans widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoansEvent extends Equatable {}

/// Event that is dispatched when the Loans widget is first created.
class LoansInitialEvent extends LoansEvent {
  @override
  List<Object?> get props => [];
}

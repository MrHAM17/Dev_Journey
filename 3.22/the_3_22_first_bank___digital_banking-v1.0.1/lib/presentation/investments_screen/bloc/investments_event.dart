// ignore_for_file: must_be_immutable

part of 'investments_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Investments widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvestmentsEvent extends Equatable {}

/// Event that is dispatched when the Investments widget is first created.
class InvestmentsInitialEvent extends InvestmentsEvent {
  @override
  List<Object?> get props => [];
}

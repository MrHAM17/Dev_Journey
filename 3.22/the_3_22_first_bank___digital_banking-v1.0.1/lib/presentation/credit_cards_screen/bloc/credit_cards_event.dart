// ignore_for_file: must_be_immutable

part of 'credit_cards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreditCards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreditCardsEvent extends Equatable {}

/// Event that is dispatched when the CreditCards widget is first created.
class CreditCardsInitialEvent extends CreditCardsEvent {
  @override
  List<Object?> get props => [];
}

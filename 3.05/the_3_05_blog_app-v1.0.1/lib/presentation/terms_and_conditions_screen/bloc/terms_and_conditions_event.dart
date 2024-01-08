// ignore_for_file: must_be_immutable

part of 'terms_and_conditions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermsAndConditions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermsAndConditionsEvent extends Equatable {}

/// Event that is dispatched when the TermsAndConditions widget is first created.
class TermsAndConditionsInitialEvent extends TermsAndConditionsEvent {
  @override
  List<Object?> get props => [];
}

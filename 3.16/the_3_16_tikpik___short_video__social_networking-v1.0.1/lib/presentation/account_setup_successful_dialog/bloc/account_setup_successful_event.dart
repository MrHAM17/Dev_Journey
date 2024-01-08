// ignore_for_file: must_be_immutable

part of 'account_setup_successful_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountSetupSuccessful widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountSetupSuccessfulEvent extends Equatable {}

/// Event that is dispatched when the AccountSetupSuccessful widget is first created.
class AccountSetupSuccessfulInitialEvent extends AccountSetupSuccessfulEvent {
  @override
  List<Object?> get props => [];
}

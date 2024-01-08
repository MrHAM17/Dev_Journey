// ignore_for_file: must_be_immutable

part of 'reset_password_successful_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordSuccessful widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordSuccessfulEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordSuccessful widget is first created.
class ResetPasswordSuccessfulInitialEvent extends ResetPasswordSuccessfulEvent {
  @override
  List<Object?> get props => [];
}

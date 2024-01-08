// ignore_for_file: must_be_immutable

part of 'reset_password_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordSuccessEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordSuccess widget is first created.
class ResetPasswordSuccessInitialEvent extends ResetPasswordSuccessEvent {
  @override
  List<Object?> get props => [];
}

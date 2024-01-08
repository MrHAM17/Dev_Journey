// ignore_for_file: must_be_immutable

part of 'forgot_password_methods_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordMethods widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordMethodsEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordMethods widget is first created.
class ForgotPasswordMethodsInitialEvent extends ForgotPasswordMethodsEvent {
  @override
  List<Object?> get props => [];
}

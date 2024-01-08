// ignore_for_file: must_be_immutable

part of 'sign_in_blank_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInBlankForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInBlankFormEvent extends Equatable {}

/// Event that is dispatched when the SignInBlankForm widget is first created.
class SignInBlankFormInitialEvent extends SignInBlankFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignInBlankFormEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignInBlankFormEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

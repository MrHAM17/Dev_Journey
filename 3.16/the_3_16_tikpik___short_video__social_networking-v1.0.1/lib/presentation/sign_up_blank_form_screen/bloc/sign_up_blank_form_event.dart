// ignore_for_file: must_be_immutable

part of 'sign_up_blank_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpBlankForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpBlankFormEvent extends Equatable {}

/// Event that is dispatched when the SignUpBlankForm widget is first created.
class SignUpBlankFormInitialEvent extends SignUpBlankFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUpBlankFormEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUpBlankFormEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

// ignore_for_file: must_be_immutable

part of 'registers_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Registers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistersEvent extends Equatable {}

/// Event that is dispatched when the Registers widget is first created.
class RegistersInitialEvent extends RegistersEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/auth/register API.
class CreateRegisterEvent extends RegistersEvent {
  CreateRegisterEvent({
    this.onCreateRegisterEventSuccess,
    this.onCreateRegisterEventError,
  });

  Function? onCreateRegisterEventSuccess;

  Function? onCreateRegisterEventError;

  @override
  List<Object?> get props => [
        onCreateRegisterEventSuccess,
        onCreateRegisterEventError,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends RegistersEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

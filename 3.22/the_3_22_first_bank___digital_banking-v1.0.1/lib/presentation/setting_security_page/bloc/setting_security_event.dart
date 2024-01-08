// ignore_for_file: must_be_immutable

part of 'setting_security_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingSecurity widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingSecurityEvent extends Equatable {}

/// Event that is dispatched when the SettingSecurity widget is first created.
class SettingSecurityInitialEvent extends SettingSecurityEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SettingSecurityEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

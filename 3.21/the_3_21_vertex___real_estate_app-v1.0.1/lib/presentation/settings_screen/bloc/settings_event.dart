// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Settings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingsEvent extends Equatable {}

/// Event that is dispatched when the Settings widget is first created.
class SettingsInitialEvent extends SettingsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SettingsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends SettingsEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

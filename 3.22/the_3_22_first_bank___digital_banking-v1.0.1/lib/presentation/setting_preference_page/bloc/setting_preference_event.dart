// ignore_for_file: must_be_immutable

part of 'setting_preference_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingPreference widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingPreferenceEvent extends Equatable {}

/// Event that is dispatched when the SettingPreference widget is first created.
class SettingPreferenceInitialEvent extends SettingPreferenceEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SettingPreferenceEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends SettingPreferenceEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends SettingPreferenceEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

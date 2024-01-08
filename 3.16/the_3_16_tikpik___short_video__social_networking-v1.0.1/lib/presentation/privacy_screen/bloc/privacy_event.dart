// ignore_for_file: must_be_immutable

part of 'privacy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Privacy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PrivacyEvent extends Equatable {}

/// Event that is dispatched when the Privacy widget is first created.
class PrivacyInitialEvent extends PrivacyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PrivacyEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends PrivacyEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

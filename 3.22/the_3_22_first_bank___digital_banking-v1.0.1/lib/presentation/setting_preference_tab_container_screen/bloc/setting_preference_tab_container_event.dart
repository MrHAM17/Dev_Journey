// ignore_for_file: must_be_immutable

part of 'setting_preference_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingPreferenceTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingPreferenceTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SettingPreferenceTabContainer widget is first created.
class SettingPreferenceTabContainerInitialEvent
    extends SettingPreferenceTabContainerEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'setting_edit_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingEditProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingEditProfileEvent extends Equatable {}

/// Event that is dispatched when the SettingEditProfile widget is first created.
class SettingEditProfileInitialEvent extends SettingEditProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API.
class FetchMeEvent extends SettingEditProfileEvent {
  FetchMeEvent({this.onFetchMeEventError});

  Function? onFetchMeEventError;

  @override
  List<Object?> get props => [
        onFetchMeEventError,
      ];
}

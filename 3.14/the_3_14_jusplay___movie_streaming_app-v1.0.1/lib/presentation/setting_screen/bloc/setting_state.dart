// ignore_for_file: must_be_immutable

part of 'setting_bloc.dart';

/// Represents the state of Setting in the application.
class SettingState extends Equatable {
  SettingState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.settingModelObj,
  });

  SettingModel? settingModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        settingModelObj,
      ];
  SettingState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    SettingModel? settingModelObj,
  }) {
    return SettingState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      settingModelObj: settingModelObj ?? this.settingModelObj,
    );
  }
}

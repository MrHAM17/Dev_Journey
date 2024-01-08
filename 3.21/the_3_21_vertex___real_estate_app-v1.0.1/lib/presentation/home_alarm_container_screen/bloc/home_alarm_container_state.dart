// ignore_for_file: must_be_immutable

part of 'home_alarm_container_bloc.dart';

/// Represents the state of HomeAlarmContainer in the application.
class HomeAlarmContainerState extends Equatable {
  HomeAlarmContainerState({this.homeAlarmContainerModelObj});

  HomeAlarmContainerModel? homeAlarmContainerModelObj;

  @override
  List<Object?> get props => [
        homeAlarmContainerModelObj,
      ];
  HomeAlarmContainerState copyWith(
      {HomeAlarmContainerModel? homeAlarmContainerModelObj}) {
    return HomeAlarmContainerState(
      homeAlarmContainerModelObj:
          homeAlarmContainerModelObj ?? this.homeAlarmContainerModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'tell_us_about_yourself_bloc.dart';

/// Represents the state of TellUsAboutYourself in the application.
class TellUsAboutYourselfState extends Equatable {
  TellUsAboutYourselfState({this.tellUsAboutYourselfModelObj});

  TellUsAboutYourselfModel? tellUsAboutYourselfModelObj;

  @override
  List<Object?> get props => [
        tellUsAboutYourselfModelObj,
      ];
  TellUsAboutYourselfState copyWith(
      {TellUsAboutYourselfModel? tellUsAboutYourselfModelObj}) {
    return TellUsAboutYourselfState(
      tellUsAboutYourselfModelObj:
          tellUsAboutYourselfModelObj ?? this.tellUsAboutYourselfModelObj,
    );
  }
}

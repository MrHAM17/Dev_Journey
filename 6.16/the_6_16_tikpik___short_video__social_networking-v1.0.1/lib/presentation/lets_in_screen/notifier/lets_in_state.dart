// ignore_for_file: must_be_immutable

part of 'lets_in_notifier.dart';

/// Represents the state of LetsIn in the application.
class LetsInState extends Equatable {
  LetsInState({this.letsInModelObj});

  LetsInModel? letsInModelObj;

  @override
  List<Object?> get props => [
        letsInModelObj,
      ];

  LetsInState copyWith({LetsInModel? letsInModelObj}) {
    return LetsInState(
      letsInModelObj: letsInModelObj ?? this.letsInModelObj,
    );
  }
}

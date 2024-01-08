// ignore_for_file: must_be_immutable

part of 'choose_plan_notifier.dart';

/// Represents the state of ChoosePlan in the application.
class ChoosePlanState extends Equatable {
  ChoosePlanState({this.choosePlanModelObj});

  ChoosePlanModel? choosePlanModelObj;

  @override
  List<Object?> get props => [
        choosePlanModelObj,
      ];

  ChoosePlanState copyWith({ChoosePlanModel? choosePlanModelObj}) {
    return ChoosePlanState(
      choosePlanModelObj: choosePlanModelObj ?? this.choosePlanModelObj,
    );
  }
}

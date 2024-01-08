// ignore_for_file: must_be_immutable

part of 'interests_people_tab_container_bloc.dart';

/// Represents the state of InterestsPeopleTabContainer in the application.
class InterestsPeopleTabContainerState extends Equatable {
  InterestsPeopleTabContainerState({this.interestsPeopleTabContainerModelObj});

  InterestsPeopleTabContainerModel? interestsPeopleTabContainerModelObj;

  @override
  List<Object?> get props => [
        interestsPeopleTabContainerModelObj,
      ];
  InterestsPeopleTabContainerState copyWith(
      {InterestsPeopleTabContainerModel? interestsPeopleTabContainerModelObj}) {
    return InterestsPeopleTabContainerState(
      interestsPeopleTabContainerModelObj:
          interestsPeopleTabContainerModelObj ??
              this.interestsPeopleTabContainerModelObj,
    );
  }
}

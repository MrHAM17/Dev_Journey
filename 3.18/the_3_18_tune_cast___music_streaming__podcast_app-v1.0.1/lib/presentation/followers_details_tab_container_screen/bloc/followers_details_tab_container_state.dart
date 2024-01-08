// ignore_for_file: must_be_immutable

part of 'followers_details_tab_container_bloc.dart';

/// Represents the state of FollowersDetailsTabContainer in the application.
class FollowersDetailsTabContainerState extends Equatable {
  FollowersDetailsTabContainerState(
      {this.followersDetailsTabContainerModelObj});

  FollowersDetailsTabContainerModel? followersDetailsTabContainerModelObj;

  @override
  List<Object?> get props => [
        followersDetailsTabContainerModelObj,
      ];
  FollowersDetailsTabContainerState copyWith(
      {FollowersDetailsTabContainerModel?
          followersDetailsTabContainerModelObj}) {
    return FollowersDetailsTabContainerState(
      followersDetailsTabContainerModelObj:
          followersDetailsTabContainerModelObj ??
              this.followersDetailsTabContainerModelObj,
    );
  }
}

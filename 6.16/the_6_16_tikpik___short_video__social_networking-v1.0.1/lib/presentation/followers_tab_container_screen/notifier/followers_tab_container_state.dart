// ignore_for_file: must_be_immutable

part of 'followers_tab_container_notifier.dart';

/// Represents the state of FollowersTabContainer in the application.
class FollowersTabContainerState extends Equatable {
  FollowersTabContainerState({this.followersTabContainerModelObj});

  FollowersTabContainerModel? followersTabContainerModelObj;

  @override
  List<Object?> get props => [
        followersTabContainerModelObj,
      ];

  FollowersTabContainerState copyWith(
      {FollowersTabContainerModel? followersTabContainerModelObj}) {
    return FollowersTabContainerState(
      followersTabContainerModelObj:
          followersTabContainerModelObj ?? this.followersTabContainerModelObj,
    );
  }
}

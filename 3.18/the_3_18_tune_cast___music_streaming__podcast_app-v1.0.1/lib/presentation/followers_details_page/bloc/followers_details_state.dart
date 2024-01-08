// ignore_for_file: must_be_immutable

part of 'followers_details_bloc.dart';

/// Represents the state of FollowersDetails in the application.
class FollowersDetailsState extends Equatable {
  FollowersDetailsState({this.followersDetailsModelObj});

  FollowersDetailsModel? followersDetailsModelObj;

  @override
  List<Object?> get props => [
        followersDetailsModelObj,
      ];
  FollowersDetailsState copyWith(
      {FollowersDetailsModel? followersDetailsModelObj}) {
    return FollowersDetailsState(
      followersDetailsModelObj:
          followersDetailsModelObj ?? this.followersDetailsModelObj,
    );
  }
}

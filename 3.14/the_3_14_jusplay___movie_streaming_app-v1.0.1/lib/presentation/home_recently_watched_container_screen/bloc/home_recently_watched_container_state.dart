// ignore_for_file: must_be_immutable

part of 'home_recently_watched_container_bloc.dart';

/// Represents the state of HomeRecentlyWatchedContainer in the application.
class HomeRecentlyWatchedContainerState extends Equatable {
  HomeRecentlyWatchedContainerState(
      {this.homeRecentlyWatchedContainerModelObj});

  HomeRecentlyWatchedContainerModel? homeRecentlyWatchedContainerModelObj;

  @override
  List<Object?> get props => [
        homeRecentlyWatchedContainerModelObj,
      ];
  HomeRecentlyWatchedContainerState copyWith(
      {HomeRecentlyWatchedContainerModel?
          homeRecentlyWatchedContainerModelObj}) {
    return HomeRecentlyWatchedContainerState(
      homeRecentlyWatchedContainerModelObj:
          homeRecentlyWatchedContainerModelObj ??
              this.homeRecentlyWatchedContainerModelObj,
    );
  }
}

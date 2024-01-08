// ignore_for_file: must_be_immutable

part of 'home_recently_watched_bloc.dart';

/// Represents the state of HomeRecentlyWatched in the application.
class HomeRecentlyWatchedState extends Equatable {
  HomeRecentlyWatchedState({
    this.sliderIndex = 0,
    this.homeRecentlyWatchedModelObj,
  });

  HomeRecentlyWatchedModel? homeRecentlyWatchedModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homeRecentlyWatchedModelObj,
      ];
  HomeRecentlyWatchedState copyWith({
    int? sliderIndex,
    HomeRecentlyWatchedModel? homeRecentlyWatchedModelObj,
  }) {
    return HomeRecentlyWatchedState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeRecentlyWatchedModelObj:
          homeRecentlyWatchedModelObj ?? this.homeRecentlyWatchedModelObj,
    );
  }
}

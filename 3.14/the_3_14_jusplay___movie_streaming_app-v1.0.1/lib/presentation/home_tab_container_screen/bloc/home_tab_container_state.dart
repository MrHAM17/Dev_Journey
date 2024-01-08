// ignore_for_file: must_be_immutable

part of 'home_tab_container_bloc.dart';

/// Represents the state of HomeTabContainer in the application.
class HomeTabContainerState extends Equatable {
  HomeTabContainerState({
    this.sliderIndex = 0,
    this.homeTabContainerModelObj,
  });

  HomeTabContainerModel? homeTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homeTabContainerModelObj,
      ];
  HomeTabContainerState copyWith({
    int? sliderIndex,
    HomeTabContainerModel? homeTabContainerModelObj,
  }) {
    return HomeTabContainerState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeTabContainerModelObj:
          homeTabContainerModelObj ?? this.homeTabContainerModelObj,
    );
  }
}

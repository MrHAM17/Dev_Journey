// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.id,
    this.homeModelObj,
  });

  HomeModel? homeModelObj;

  var id;

  @override
  List<Object?> get props => [
        id,
        homeModelObj,
      ];
  HomeState copyWith({
    var id,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      id: id ?? this.id,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}

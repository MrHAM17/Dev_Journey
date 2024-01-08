// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.searchController,
    this.token,
    this.id,
    this.homeModelObj,
  });

  TextEditingController? searchController;

  HomeModel? homeModelObj;

  var token;

  var id;

  @override
  List<Object?> get props => [
        searchController,
        token,
        id,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? searchController,
    var token,
    var id,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      token: token ?? this.token,
      id: id ?? this.id,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}

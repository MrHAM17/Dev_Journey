// ignore_for_file: must_be_immutable

part of 'viewers_bloc.dart';

/// Represents the state of Viewers in the application.
class ViewersState extends Equatable {
  ViewersState({
    this.searchController,
    this.viewersModelObj,
  });

  TextEditingController? searchController;

  ViewersModel? viewersModelObj;

  @override
  List<Object?> get props => [
        searchController,
        viewersModelObj,
      ];
  ViewersState copyWith({
    TextEditingController? searchController,
    ViewersModel? viewersModelObj,
  }) {
    return ViewersState(
      searchController: searchController ?? this.searchController,
      viewersModelObj: viewersModelObj ?? this.viewersModelObj,
    );
  }
}

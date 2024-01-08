// ignore_for_file: must_be_immutable

part of 'search_not_found_tab_container_bloc.dart';

/// Represents the state of SearchNotFoundTabContainer in the application.
class SearchNotFoundTabContainerState extends Equatable {
  SearchNotFoundTabContainerState({
    this.searchController,
    this.searchNotFoundTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchNotFoundTabContainerModel? searchNotFoundTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchNotFoundTabContainerModelObj,
      ];
  SearchNotFoundTabContainerState copyWith({
    TextEditingController? searchController,
    SearchNotFoundTabContainerModel? searchNotFoundTabContainerModelObj,
  }) {
    return SearchNotFoundTabContainerState(
      searchController: searchController ?? this.searchController,
      searchNotFoundTabContainerModelObj: searchNotFoundTabContainerModelObj ??
          this.searchNotFoundTabContainerModelObj,
    );
  }
}

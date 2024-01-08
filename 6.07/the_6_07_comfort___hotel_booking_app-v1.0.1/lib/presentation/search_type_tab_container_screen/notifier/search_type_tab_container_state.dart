// ignore_for_file: must_be_immutable

part of 'search_type_tab_container_notifier.dart';

/// Represents the state of SearchTypeTabContainer in the application.
class SearchTypeTabContainerState extends Equatable {
  SearchTypeTabContainerState({
    this.searchController,
    this.searchTypeTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchTypeTabContainerModel? searchTypeTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTypeTabContainerModelObj,
      ];

  SearchTypeTabContainerState copyWith({
    TextEditingController? searchController,
    SearchTypeTabContainerModel? searchTypeTabContainerModelObj,
  }) {
    return SearchTypeTabContainerState(
      searchController: searchController ?? this.searchController,
      searchTypeTabContainerModelObj:
          searchTypeTabContainerModelObj ?? this.searchTypeTabContainerModelObj,
    );
  }
}

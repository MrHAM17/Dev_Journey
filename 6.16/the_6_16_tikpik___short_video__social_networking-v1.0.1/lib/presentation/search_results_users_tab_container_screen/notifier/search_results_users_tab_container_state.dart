// ignore_for_file: must_be_immutable

part of 'search_results_users_tab_container_notifier.dart';

/// Represents the state of SearchResultsUsersTabContainer in the application.
class SearchResultsUsersTabContainerState extends Equatable {
  SearchResultsUsersTabContainerState({
    this.searchController,
    this.searchResultsUsersTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchResultsUsersTabContainerModel? searchResultsUsersTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultsUsersTabContainerModelObj,
      ];

  SearchResultsUsersTabContainerState copyWith({
    TextEditingController? searchController,
    SearchResultsUsersTabContainerModel? searchResultsUsersTabContainerModelObj,
  }) {
    return SearchResultsUsersTabContainerState(
      searchController: searchController ?? this.searchController,
      searchResultsUsersTabContainerModelObj:
          searchResultsUsersTabContainerModelObj ??
              this.searchResultsUsersTabContainerModelObj,
    );
  }
}

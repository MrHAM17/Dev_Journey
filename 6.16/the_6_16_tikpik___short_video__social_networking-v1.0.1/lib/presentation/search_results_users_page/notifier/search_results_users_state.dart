// ignore_for_file: must_be_immutable

part of 'search_results_users_notifier.dart';

/// Represents the state of SearchResultsUsers in the application.
class SearchResultsUsersState extends Equatable {
  SearchResultsUsersState({this.searchResultsUsersModelObj});

  SearchResultsUsersModel? searchResultsUsersModelObj;

  @override
  List<Object?> get props => [
        searchResultsUsersModelObj,
      ];

  SearchResultsUsersState copyWith(
      {SearchResultsUsersModel? searchResultsUsersModelObj}) {
    return SearchResultsUsersState(
      searchResultsUsersModelObj:
          searchResultsUsersModelObj ?? this.searchResultsUsersModelObj,
    );
  }
}

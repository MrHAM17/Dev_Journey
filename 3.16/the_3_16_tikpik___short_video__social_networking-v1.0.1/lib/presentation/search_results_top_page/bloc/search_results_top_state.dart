// ignore_for_file: must_be_immutable

part of 'search_results_top_bloc.dart';

/// Represents the state of SearchResultsTop in the application.
class SearchResultsTopState extends Equatable {
  SearchResultsTopState({this.searchResultsTopModelObj});

  SearchResultsTopModel? searchResultsTopModelObj;

  @override
  List<Object?> get props => [
        searchResultsTopModelObj,
      ];
  SearchResultsTopState copyWith(
      {SearchResultsTopModel? searchResultsTopModelObj}) {
    return SearchResultsTopState(
      searchResultsTopModelObj:
          searchResultsTopModelObj ?? this.searchResultsTopModelObj,
    );
  }
}

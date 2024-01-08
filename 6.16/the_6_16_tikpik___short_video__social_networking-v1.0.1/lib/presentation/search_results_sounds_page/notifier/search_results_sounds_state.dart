// ignore_for_file: must_be_immutable

part of 'search_results_sounds_notifier.dart';

/// Represents the state of SearchResultsSounds in the application.
class SearchResultsSoundsState extends Equatable {
  SearchResultsSoundsState({this.searchResultsSoundsModelObj});

  SearchResultsSoundsModel? searchResultsSoundsModelObj;

  @override
  List<Object?> get props => [
        searchResultsSoundsModelObj,
      ];

  SearchResultsSoundsState copyWith(
      {SearchResultsSoundsModel? searchResultsSoundsModelObj}) {
    return SearchResultsSoundsState(
      searchResultsSoundsModelObj:
          searchResultsSoundsModelObj ?? this.searchResultsSoundsModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'search_topics_notifier.dart';

/// Represents the state of SearchTopics in the application.
class SearchTopicsState extends Equatable {
  SearchTopicsState({
    this.searchController,
    this.searchTopicsModelObj,
  });

  TextEditingController? searchController;

  SearchTopicsModel? searchTopicsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTopicsModelObj,
      ];

  SearchTopicsState copyWith({
    TextEditingController? searchController,
    SearchTopicsModel? searchTopicsModelObj,
  }) {
    return SearchTopicsState(
      searchController: searchController ?? this.searchController,
      searchTopicsModelObj: searchTopicsModelObj ?? this.searchTopicsModelObj,
    );
  }
}

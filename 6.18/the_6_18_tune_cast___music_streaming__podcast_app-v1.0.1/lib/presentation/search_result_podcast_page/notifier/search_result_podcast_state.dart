// ignore_for_file: must_be_immutable

part of 'search_result_podcast_notifier.dart';

/// Represents the state of SearchResultPodcast in the application.
class SearchResultPodcastState extends Equatable {
  SearchResultPodcastState({this.searchResultPodcastModelObj});

  SearchResultPodcastModel? searchResultPodcastModelObj;

  @override
  List<Object?> get props => [
        searchResultPodcastModelObj,
      ];

  SearchResultPodcastState copyWith(
      {SearchResultPodcastModel? searchResultPodcastModelObj}) {
    return SearchResultPodcastState(
      searchResultPodcastModelObj:
          searchResultPodcastModelObj ?? this.searchResultPodcastModelObj,
    );
  }
}

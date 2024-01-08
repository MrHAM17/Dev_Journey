// ignore_for_file: must_be_immutable

part of 'search_results_videos_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsVideos widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsVideosEvent extends Equatable {}

/// Event that is dispatched when the SearchResultsVideos widget is first created.
class SearchResultsVideosInitialEvent extends SearchResultsVideosEvent {
  @override
  List<Object?> get props => [];
}

class SearchresultsvideosItemEvent extends SearchResultsVideosEvent {
  SearchresultsvideosItemEvent({
    required this.index,
    this.radioGroup,
  });

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [
        index,
        radioGroup,
      ];
}

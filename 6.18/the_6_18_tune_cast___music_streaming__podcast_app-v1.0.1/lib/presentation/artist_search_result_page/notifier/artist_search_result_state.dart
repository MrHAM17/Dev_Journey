// ignore_for_file: must_be_immutable

part of 'artist_search_result_notifier.dart';

/// Represents the state of ArtistSearchResult in the application.
class ArtistSearchResultState extends Equatable {
  ArtistSearchResultState({this.artistSearchResultModelObj});

  ArtistSearchResultModel? artistSearchResultModelObj;

  @override
  List<Object?> get props => [
        artistSearchResultModelObj,
      ];

  ArtistSearchResultState copyWith(
      {ArtistSearchResultModel? artistSearchResultModelObj}) {
    return ArtistSearchResultState(
      artistSearchResultModelObj:
          artistSearchResultModelObj ?? this.artistSearchResultModelObj,
    );
  }
}

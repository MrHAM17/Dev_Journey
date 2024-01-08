// ignore_for_file: must_be_immutable

part of 'trending_hashtag_notifier.dart';

/// Represents the state of TrendingHashtag in the application.
class TrendingHashtagState extends Equatable {
  TrendingHashtagState({this.trendingHashtagModelObj});

  TrendingHashtagModel? trendingHashtagModelObj;

  @override
  List<Object?> get props => [
        trendingHashtagModelObj,
      ];

  TrendingHashtagState copyWith(
      {TrendingHashtagModel? trendingHashtagModelObj}) {
    return TrendingHashtagState(
      trendingHashtagModelObj:
          trendingHashtagModelObj ?? this.trendingHashtagModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'trending_sounds_bloc.dart';

/// Represents the state of TrendingSounds in the application.
class TrendingSoundsState extends Equatable {
  TrendingSoundsState({this.trendingSoundsModelObj});

  TrendingSoundsModel? trendingSoundsModelObj;

  @override
  List<Object?> get props => [
        trendingSoundsModelObj,
      ];
  TrendingSoundsState copyWith({TrendingSoundsModel? trendingSoundsModelObj}) {
    return TrendingSoundsState(
      trendingSoundsModelObj:
          trendingSoundsModelObj ?? this.trendingSoundsModelObj,
    );
  }
}

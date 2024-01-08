// ignore_for_file: must_be_immutable

part of 'rising_stars_notifier.dart';

/// Represents the state of RisingStars in the application.
class RisingStarsState extends Equatable {
  RisingStarsState({this.risingStarsModelObj});

  RisingStarsModel? risingStarsModelObj;

  @override
  List<Object?> get props => [
        risingStarsModelObj,
      ];

  RisingStarsState copyWith({RisingStarsModel? risingStarsModelObj}) {
    return RisingStarsState(
      risingStarsModelObj: risingStarsModelObj ?? this.risingStarsModelObj,
    );
  }
}

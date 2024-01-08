// ignore_for_file: must_be_immutable

part of 'see_live_notifier.dart';

/// Represents the state of SeeLive in the application.
class SeeLiveState extends Equatable {
  SeeLiveState({this.seeLiveModelObj});

  SeeLiveModel? seeLiveModelObj;

  @override
  List<Object?> get props => [
        seeLiveModelObj,
      ];

  SeeLiveState copyWith({SeeLiveModel? seeLiveModelObj}) {
    return SeeLiveState(
      seeLiveModelObj: seeLiveModelObj ?? this.seeLiveModelObj,
    );
  }
}

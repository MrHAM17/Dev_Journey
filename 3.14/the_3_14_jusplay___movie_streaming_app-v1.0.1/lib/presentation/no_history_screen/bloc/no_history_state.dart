// ignore_for_file: must_be_immutable

part of 'no_history_bloc.dart';

/// Represents the state of NoHistory in the application.
class NoHistoryState extends Equatable {
  NoHistoryState({this.noHistoryModelObj});

  NoHistoryModel? noHistoryModelObj;

  @override
  List<Object?> get props => [
        noHistoryModelObj,
      ];
  NoHistoryState copyWith({NoHistoryModel? noHistoryModelObj}) {
    return NoHistoryState(
      noHistoryModelObj: noHistoryModelObj ?? this.noHistoryModelObj,
    );
  }
}

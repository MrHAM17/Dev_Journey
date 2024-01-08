// ignore_for_file: must_be_immutable

part of 'saved_empty_bloc.dart';

/// Represents the state of SavedEmpty in the application.
class SavedEmptyState extends Equatable {
  SavedEmptyState({this.savedEmptyModelObj});

  SavedEmptyModel? savedEmptyModelObj;

  @override
  List<Object?> get props => [
        savedEmptyModelObj,
      ];
  SavedEmptyState copyWith({SavedEmptyModel? savedEmptyModelObj}) {
    return SavedEmptyState(
      savedEmptyModelObj: savedEmptyModelObj ?? this.savedEmptyModelObj,
    );
  }
}
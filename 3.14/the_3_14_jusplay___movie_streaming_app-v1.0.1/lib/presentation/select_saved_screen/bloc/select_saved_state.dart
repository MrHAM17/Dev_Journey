// ignore_for_file: must_be_immutable

part of 'select_saved_bloc.dart';

/// Represents the state of SelectSaved in the application.
class SelectSavedState extends Equatable {
  SelectSavedState({this.selectSavedModelObj});

  SelectSavedModel? selectSavedModelObj;

  @override
  List<Object?> get props => [
        selectSavedModelObj,
      ];
  SelectSavedState copyWith({SelectSavedModel? selectSavedModelObj}) {
    return SelectSavedState(
      selectSavedModelObj: selectSavedModelObj ?? this.selectSavedModelObj,
    );
  }
}

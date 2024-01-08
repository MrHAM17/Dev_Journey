// ignore_for_file: must_be_immutable

part of 'new_playlist_notifier.dart';

/// Represents the state of NewPlaylist in the application.
class NewPlaylistState extends Equatable {
  NewPlaylistState({
    this.labelController,
    this.dateController,
    this.selectedDropDownValue,
    this.newPlaylistModelObj,
  });

  TextEditingController? labelController;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  NewPlaylistModel? newPlaylistModelObj;

  @override
  List<Object?> get props => [
        labelController,
        dateController,
        selectedDropDownValue,
        newPlaylistModelObj,
      ];

  NewPlaylistState copyWith({
    TextEditingController? labelController,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    NewPlaylistModel? newPlaylistModelObj,
  }) {
    return NewPlaylistState(
      labelController: labelController ?? this.labelController,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      newPlaylistModelObj: newPlaylistModelObj ?? this.newPlaylistModelObj,
    );
  }
}

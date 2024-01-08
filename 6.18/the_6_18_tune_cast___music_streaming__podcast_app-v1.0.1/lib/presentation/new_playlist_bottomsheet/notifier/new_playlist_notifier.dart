import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/new_playlist_bottomsheet/models/new_playlist_model.dart';
part 'new_playlist_state.dart';

final newPlaylistNotifier =
    StateNotifierProvider<NewPlaylistNotifier, NewPlaylistState>(
  (ref) => NewPlaylistNotifier(NewPlaylistState(
    labelController: TextEditingController(),
    dateController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    newPlaylistModelObj: NewPlaylistModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a NewPlaylist according to the event that is dispatched to it.
class NewPlaylistNotifier extends StateNotifier<NewPlaylistState> {
  NewPlaylistNotifier(NewPlaylistState state) : super(state) {}
}

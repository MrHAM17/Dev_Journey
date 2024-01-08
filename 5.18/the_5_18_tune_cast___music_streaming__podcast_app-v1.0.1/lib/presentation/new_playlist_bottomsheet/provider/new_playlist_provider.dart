import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/new_playlist_bottomsheet/models/new_playlist_model.dart';

/// A provider class for the NewPlaylistBottomsheet.
///
/// This provider manages the state of the NewPlaylistBottomsheet, including the
/// current newPlaylistModelObj
class NewPlaylistProvider extends ChangeNotifier {
  TextEditingController labelController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  NewPlaylistModel newPlaylistModelObj = NewPlaylistModel();

  @override
  void dispose() {
    super.dispose();
    labelController.dispose();
    dateController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in newPlaylistModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}

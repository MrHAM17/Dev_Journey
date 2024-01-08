import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/new_playlist_bottomsheet/models/new_playlist_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewPlaylistBottomsheet.
///
/// This class manages the state of the NewPlaylistBottomsheet, including the
/// current newPlaylistModelObj
class NewPlaylistController extends GetxController {
  TextEditingController labelController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  Rx<NewPlaylistModel> newPlaylistModelObj = NewPlaylistModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    labelController.dispose();
    dateController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in newPlaylistModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newPlaylistModelObj.value.dropdownItemList.refresh();
  }
}

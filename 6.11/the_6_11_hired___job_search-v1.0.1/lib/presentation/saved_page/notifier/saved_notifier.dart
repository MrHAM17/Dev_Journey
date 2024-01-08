import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/saved_item_model.dart';
import '../models/fulltime7_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/saved_page/models/saved_model.dart';
part 'saved_state.dart';

final savedNotifier = StateNotifierProvider<SavedNotifier, SavedState>(
    (ref) => SavedNotifier(SavedState(
            savedModelObj: SavedModel(savedItemList: [
          SavedItemModel(
              bag: ImageConstant.imgBag,
              digitalMarketing: "UX Designer",
              motorola: "Motorola",
              price: "560 - 12.000/Month"),
          SavedItemModel(
              bag: ImageConstant.imgCardano2,
              digitalMarketing: "UI/UX Designer",
              motorola: "Motorola",
              price: "560 - 12.000/Month"),
          SavedItemModel(
              bag: ImageConstant.imgSettingsRed800,
              digitalMarketing: "UI Designer",
              motorola: "Motorola",
              price: "560 - 12.000/Month")
        ]))));

/// A notifier that manages the state of a Saved according to the event that is dispatched to it.
class SavedNotifier extends StateNotifier<SavedState> {
  SavedNotifier(SavedState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Fulltime7ItemModel> newList =
        List<Fulltime7ItemModel>.from(state.savedModelObj!.fulltime7ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        savedModelObj:
            state.savedModelObj?.copyWith(fulltime7ItemList: newList));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/saved_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/saved_page/models/saved_model.dart';
part 'saved_state.dart';

final savedNotifier = StateNotifierProvider<SavedNotifier, SavedState>(
  (ref) => SavedNotifier(SavedState(
    savedModelObj: SavedModel(savedItemList: [
      SavedItemModel(
          image: ImageConstant.imgRectangle121031,
          theIceAgeAdventures: "The Ice Age: Adventures of buck Wild",
          actionAdventure: "Action, Adventure"),
      SavedItemModel(
          image: ImageConstant.imgRectangle121033,
          theIceAgeAdventures: "Free Guy 2021",
          actionAdventure: "Action, Adventure")
    ]),
  )),
);

/// A notifier that manages the state of a Saved according to the event that is dispatched to it.
class SavedNotifier extends StateNotifier<SavedState> {
  SavedNotifier(SavedState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/saved_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/saved_page/models/saved_model.dart';
part 'saved_event.dart';
part 'saved_state.dart';

/// A bloc that manages the state of a Saved according to the event that is dispatched to it.
class SavedBloc extends Bloc<SavedEvent, SavedState> {
  SavedBloc(SavedState initialState) : super(initialState) {
    on<SavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedInitialEvent event,
    Emitter<SavedState> emit,
  ) async {
    emit(state.copyWith(
        savedModelObj: state.savedModelObj?.copyWith(
      savedItemList: fillSavedItemList(),
    )));
  }

  List<SavedItemModel> fillSavedItemList() {
    return [
      SavedItemModel(
          image: ImageConstant.imgRectangle121031,
          theIceAgeAdventures: "The Ice Age: Adventures of buck Wild",
          actionAdventure: "Action, Adventure"),
      SavedItemModel(
          image: ImageConstant.imgRectangle121033,
          theIceAgeAdventures: "Free Guy 2021",
          actionAdventure: "Action, Adventure")
    ];
  }
}

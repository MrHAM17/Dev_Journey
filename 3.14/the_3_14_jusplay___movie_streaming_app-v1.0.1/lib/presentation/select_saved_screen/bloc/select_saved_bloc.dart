import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/selectsaved_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/select_saved_screen/models/select_saved_model.dart';
part 'select_saved_event.dart';
part 'select_saved_state.dart';

/// A bloc that manages the state of a SelectSaved according to the event that is dispatched to it.
class SelectSavedBloc extends Bloc<SelectSavedEvent, SelectSavedState> {
  SelectSavedBloc(SelectSavedState initialState) : super(initialState) {
    on<SelectSavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectSavedInitialEvent event,
    Emitter<SelectSavedState> emit,
  ) async {
    emit(state.copyWith(
        selectSavedModelObj: state.selectSavedModelObj?.copyWith(
      selectsavedItemList: fillSelectsavedItemList(),
    )));
  }

  List<SelectsavedItemModel> fillSelectsavedItemList() {
    return [
      SelectsavedItemModel(
          image: ImageConstant.imgRectangle121031,
          theIceAgeAdventures: "The Ice Age: Adventures of buck Wild",
          actionAdventure: "Action, Adventure"),
      SelectsavedItemModel(
          image: ImageConstant.imgRectangle12103,
          theIceAgeAdventures: "Captain America: The Winter Soldier",
          actionAdventure: "Action, Adventure"),
      SelectsavedItemModel(
          image: ImageConstant.imgRectangle12103112x112,
          theIceAgeAdventures: "Captain Marvel",
          actionAdventure: "Action, Adventure"),
      SelectsavedItemModel(
          image: ImageConstant.imgRectangle121032,
          theIceAgeAdventures: "Encanto 2021",
          actionAdventure: "Action, Adventure")
    ];
  }
}

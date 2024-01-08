import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/followback_item_model.dart';
import '../models/followback1_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/all_activity_page/models/all_activity_model.dart';
part 'all_activity_event.dart';
part 'all_activity_state.dart';

/// A bloc that manages the state of a AllActivity according to the event that is dispatched to it.
class AllActivityBloc extends Bloc<AllActivityEvent, AllActivityState> {
  AllActivityBloc(AllActivityState initialState) : super(initialState) {
    on<AllActivityInitialEvent>(_onInitialize);
    on<onSelected>(_onSelected);
  }

  _onInitialize(
    AllActivityInitialEvent event,
    Emitter<AllActivityState> emit,
  ) async {
    emit(state.copyWith(
        allActivityModelObj: state.allActivityModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      followbackItemList: fillFollowbackItemList(),
      followback1ItemList: fillFollowback1ItemList(),
    )));
  }

  _onSelected(
    onSelected event,
    Emitter<AllActivityState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
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
    ];
  }

  List<FollowbackItemModel> fillFollowbackItemList() {
    return [
      FollowbackItemModel(
          charoletteHanlin: ImageConstant.imgEllipse14,
          charoletteHanlin1: "Charolette Hanlin",
          information: "Leave a comment on your video",
          charoletteHanlin2: ImageConstant.imgImage60x60),
      FollowbackItemModel(
          charoletteHanlin: ImageConstant.imgEllipse20,
          charoletteHanlin1: "Annabel Rohan",
          information: "Started following you"),
      FollowbackItemModel(
          charoletteHanlin: ImageConstant.imgEllipse12,
          charoletteHanlin1: "Sanjuanita Ordonez",
          information: "Liked your video",
          charoletteHanlin2: ImageConstant.imgImage70)
    ];
  }

  List<Followback1ItemModel> fillFollowback1ItemList() {
    return [
      Followback1ItemModel(
          clintonMcclure: ImageConstant.imgEllipse21,
          clintonMcclure1: "Clinton Mcclure",
          startedfollowingyou: "Started following you")
    ];
  }
}

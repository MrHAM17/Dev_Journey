import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';
part 'all_activity_dropdown_event.dart';
part 'all_activity_dropdown_state.dart';

/// A bloc that manages the state of a AllActivityDropdown according to the event that is dispatched to it.
class AllActivityDropdownBloc
    extends Bloc<AllActivityDropdownEvent, AllActivityDropdownState> {
  AllActivityDropdownBloc(AllActivityDropdownState initialState)
      : super(initialState) {
    on<AllActivityDropdownInitialEvent>(_onInitialize);
    on<onSelected>(_onSelected);
  }

  _onInitialize(
    AllActivityDropdownInitialEvent event,
    Emitter<AllActivityDropdownState> emit,
  ) async {
    emit(state.copyWith(
        allActivityDropdownModelObj:
            state.allActivityDropdownModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  _onSelected(
    onSelected event,
    Emitter<AllActivityDropdownState> emit,
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
}

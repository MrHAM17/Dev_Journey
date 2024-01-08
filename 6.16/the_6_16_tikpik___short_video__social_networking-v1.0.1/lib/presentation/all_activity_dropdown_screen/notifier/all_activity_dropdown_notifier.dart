import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';
part 'all_activity_dropdown_state.dart';

final allActivityDropdownNotifier = StateNotifierProvider<
    AllActivityDropdownNotifier, AllActivityDropdownState>(
  (ref) => AllActivityDropdownNotifier(AllActivityDropdownState(
    selectedDropDownValue: SelectionPopupModel(title: ''),
    allActivityDropdownModelObj: AllActivityDropdownModel(dropdownItemList: [
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

/// A notifier that manages the state of a AllActivityDropdown according to the event that is dispatched to it.
class AllActivityDropdownNotifier
    extends StateNotifier<AllActivityDropdownState> {
  AllActivityDropdownNotifier(AllActivityDropdownState state) : super(state) {}
}

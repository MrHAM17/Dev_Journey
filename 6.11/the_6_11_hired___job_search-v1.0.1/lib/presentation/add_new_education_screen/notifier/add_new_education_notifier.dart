import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/add_new_education_screen/models/add_new_education_model.dart';
part 'add_new_education_state.dart';

final addNewEducationNotifier =
    StateNotifierProvider<AddNewEducationNotifier, AddNewEducationState>(
        (ref) => AddNewEducationNotifier(AddNewEducationState(
            frameOneController: TextEditingController(),
            frameOneController1: TextEditingController(),
            frameOneController2: TextEditingController(),
            frameOneController3: TextEditingController(),
            selectedDropDownValue: SelectionPopupModel(title: ''),
            addNewEducationModelObj: AddNewEducationModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ]))));

/// A notifier that manages the state of a AddNewEducation according to the event that is dispatched to it.
class AddNewEducationNotifier extends StateNotifier<AddNewEducationState> {
  AddNewEducationNotifier(AddNewEducationState state) : super(state);
}

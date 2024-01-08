import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/new_position_screen/models/new_position_model.dart';
part 'new_position_state.dart';

final newPositionNotifier =
    StateNotifierProvider<NewPositionNotifier, NewPositionState>(
        (ref) => NewPositionNotifier(NewPositionState(
            frameOneController: TextEditingController(),
            nameController: TextEditingController(),
            locationController: TextEditingController(),
            frameOneController1: TextEditingController(),
            selectedDropDownValue: SelectionPopupModel(title: ''),
            newPositionModelObj: NewPositionModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ]))));

/// A notifier that manages the state of a NewPosition according to the event that is dispatched to it.
class NewPositionNotifier extends StateNotifier<NewPositionState> {
  NewPositionNotifier(NewPositionState state) : super(state);
}

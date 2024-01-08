import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/add_person_screen/models/add_person_model.dart';
part 'add_person_state.dart';

final addPersonNotifier =
    StateNotifierProvider<AddPersonNotifier, AddPersonState>((ref) =>
        AddPersonNotifier(AddPersonState(
            nameController: TextEditingController(),
            cardNumberController: TextEditingController(),
            saveOnList: false,
            addPersonModelObj: AddPersonModel())));

/// A notifier that manages the state of a AddPerson according to the event that is dispatched to it.
class AddPersonNotifier extends StateNotifier<AddPersonState> {
  AddPersonNotifier(AddPersonState state) : super(state);

  void changeCheckBox1(bool value) {
    state = state.copyWith(saveOnList: value);
  }
}

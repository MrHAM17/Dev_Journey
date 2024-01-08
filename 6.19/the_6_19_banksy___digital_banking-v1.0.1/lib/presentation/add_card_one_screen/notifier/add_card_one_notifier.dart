import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/add_card_one_screen/models/add_card_one_model.dart';
part 'add_card_one_state.dart';

final addCardOneNotifier =
    StateNotifierProvider<AddCardOneNotifier, AddCardOneState>((ref) =>
        AddCardOneNotifier(AddCardOneState(
            nameController: TextEditingController(),
            cardNumberController: TextEditingController(),
            dateController: TextEditingController(),
            cvvController: TextEditingController(),
            saveMyCardDetails: false,
            addCardOneModelObj: AddCardOneModel())));

/// A notifier that manages the state of a AddCardOne according to the event that is dispatched to it.
class AddCardOneNotifier extends StateNotifier<AddCardOneState> {
  AddCardOneNotifier(AddCardOneState state) : super(state);

  void changeCheckBox1(bool value) {
    state = state.copyWith(saveMyCardDetails: value);
  }
}

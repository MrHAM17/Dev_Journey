import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/add_new_card_screen/models/add_new_card_model.dart';part 'add_new_card_state.dart';final addNewCardNotifier = StateNotifierProvider<AddNewCardNotifier, AddNewCardState>((ref) => AddNewCardNotifier(AddNewCardState(nameController: TextEditingController(), numberController: TextEditingController(), expiryDateController: TextEditingController(), cvvController: TextEditingController(), addNewCardModelObj: AddNewCardModel())));
/// A notifier that manages the state of a AddNewCard according to the event that is dispatched to it.
class AddNewCardNotifier extends StateNotifier<AddNewCardState> {AddNewCardNotifier(AddNewCardState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/add_new_card_screen/models/add_new_card_model.dart';part 'add_new_card_state.dart';final addNewCardNotifier = StateNotifierProvider<AddNewCardNotifier, AddNewCardState>((ref) => AddNewCardNotifier(AddNewCardState(nameController: TextEditingController(), cardNumberController: TextEditingController(), cvvController: TextEditingController(), addNewCardModelObj: AddNewCardModel())));
/// A notifier that manages the state of a AddNewCard according to the event that is dispatched to it.
class AddNewCardNotifier extends StateNotifier<AddNewCardState> {AddNewCardNotifier(AddNewCardState state) : super(state);

DateTime selectedInputFieldsDate = DateTime.now();

 }

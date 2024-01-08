import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/add_new_property_decsription_screen/models/add_new_property_decsription_model.dart';part 'add_new_property_decsription_state.dart';final addNewPropertyDecsriptionNotifier = StateNotifierProvider<AddNewPropertyDecsriptionNotifier, AddNewPropertyDecsriptionState>((ref) => AddNewPropertyDecsriptionNotifier(AddNewPropertyDecsriptionState(addressController: TextEditingController(), addNewPropertyDecsriptionModelObj: AddNewPropertyDecsriptionModel())));
/// A notifier that manages the state of a AddNewPropertyDecsription according to the event that is dispatched to it.
class AddNewPropertyDecsriptionNotifier extends StateNotifier<AddNewPropertyDecsriptionState> {AddNewPropertyDecsriptionNotifier(AddNewPropertyDecsriptionState state) : super(state);

 }

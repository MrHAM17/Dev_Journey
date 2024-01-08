import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/create_new_pin_page/models/create_new_pin_model.dart';part 'create_new_pin_state.dart';final createNewPinNotifier = StateNotifierProvider<CreateNewPinNotifier, CreateNewPinState>((ref) => CreateNewPinNotifier(CreateNewPinState(createNewPinModelObj: CreateNewPinModel())));
/// A notifier that manages the state of a CreateNewPin according to the event that is dispatched to it.
class CreateNewPinNotifier extends StateNotifier<CreateNewPinState> {CreateNewPinNotifier(CreateNewPinState state) : super(state);

 }

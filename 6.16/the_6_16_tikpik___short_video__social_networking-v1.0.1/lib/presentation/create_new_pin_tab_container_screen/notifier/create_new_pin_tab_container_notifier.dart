import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/create_new_pin_tab_container_screen/models/create_new_pin_tab_container_model.dart';
part 'create_new_pin_tab_container_state.dart';

final createNewPinTabContainerNotifier = StateNotifierProvider<
    CreateNewPinTabContainerNotifier, CreateNewPinTabContainerState>(
  (ref) => CreateNewPinTabContainerNotifier(CreateNewPinTabContainerState(
    createNewPinTabContainerModelObj: CreateNewPinTabContainerModel(),
  )),
);

/// A notifier that manages the state of a CreateNewPinTabContainer according to the event that is dispatched to it.
class CreateNewPinTabContainerNotifier
    extends StateNotifier<CreateNewPinTabContainerState> {
  CreateNewPinTabContainerNotifier(CreateNewPinTabContainerState state)
      : super(state) {}
}

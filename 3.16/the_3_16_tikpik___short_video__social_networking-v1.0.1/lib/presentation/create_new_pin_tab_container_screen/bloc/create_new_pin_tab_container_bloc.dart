import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/create_new_pin_tab_container_screen/models/create_new_pin_tab_container_model.dart';
part 'create_new_pin_tab_container_event.dart';
part 'create_new_pin_tab_container_state.dart';

/// A bloc that manages the state of a CreateNewPinTabContainer according to the event that is dispatched to it.
class CreateNewPinTabContainerBloc
    extends Bloc<CreateNewPinTabContainerEvent, CreateNewPinTabContainerState> {
  CreateNewPinTabContainerBloc(CreateNewPinTabContainerState initialState)
      : super(initialState) {
    on<CreateNewPinTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateNewPinTabContainerInitialEvent event,
    Emitter<CreateNewPinTabContainerState> emit,
  ) async {}
}

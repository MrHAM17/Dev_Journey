import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/add_option_screen/models/add_option_model.dart';
part 'add_option_event.dart';
part 'add_option_state.dart';

/// A bloc that manages the state of a AddOption according to the event that is dispatched to it.
class AddOptionBloc extends Bloc<AddOptionEvent, AddOptionState> {
  AddOptionBloc(AddOptionState initialState) : super(initialState) {
    on<AddOptionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddOptionInitialEvent event,
    Emitter<AddOptionState> emit,
  ) async {
    emit(state.copyWith(
      stateInactiveController: TextEditingController(),
      stateInactiveController1: TextEditingController(),
    ));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_17_housit___buyrentsell_property/presentation/edit_success_bottomsheet/models/edit_success_model.dart';
part 'edit_success_event.dart';
part 'edit_success_state.dart';

/// A bloc that manages the state of a EditSuccess according to the event that is dispatched to it.
class EditSuccessBloc extends Bloc<EditSuccessEvent, EditSuccessState> {
  EditSuccessBloc(EditSuccessState initialState) : super(initialState) {
    on<EditSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditSuccessInitialEvent event,
    Emitter<EditSuccessState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_13_fashionista___e_commerce_app/presentation/information_screen/models/information_model.dart';
part 'information_event.dart';
part 'information_state.dart';

/// A bloc that manages the state of a Information according to the event that is dispatched to it.
class InformationBloc extends Bloc<InformationEvent, InformationState> {
  InformationBloc(InformationState initialState) : super(initialState) {
    on<InformationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationInitialEvent event,
    Emitter<InformationState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        dateOfBirthController: TextEditingController(),
        addressController: TextEditingController(),
        mobileNumberController: TextEditingController()));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_17_housit___buyrentsell_property/presentation/extra_information_success_bottomsheet/models/extra_information_success_model.dart';
part 'extra_information_success_event.dart';
part 'extra_information_success_state.dart';

/// A bloc that manages the state of a ExtraInformationSuccess according to the event that is dispatched to it.
class ExtraInformationSuccessBloc
    extends Bloc<ExtraInformationSuccessEvent, ExtraInformationSuccessState> {
  ExtraInformationSuccessBloc(ExtraInformationSuccessState initialState)
      : super(initialState) {
    on<ExtraInformationSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExtraInformationSuccessInitialEvent event,
    Emitter<ExtraInformationSuccessState> emit,
  ) async {}
}

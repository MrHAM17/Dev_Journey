import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_05_blog_app/presentation/terms_and_conditions_screen/models/terms_and_conditions_model.dart';
part 'terms_and_conditions_event.dart';
part 'terms_and_conditions_state.dart';

/// A bloc that manages the state of a TermsAndConditions according to the event that is dispatched to it.
class TermsAndConditionsBloc
    extends Bloc<TermsAndConditionsEvent, TermsAndConditionsState> {
  TermsAndConditionsBloc(TermsAndConditionsState initialState)
      : super(initialState) {
    on<TermsAndConditionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermsAndConditionsInitialEvent event,
    Emitter<TermsAndConditionsState> emit,
  ) async {}
}

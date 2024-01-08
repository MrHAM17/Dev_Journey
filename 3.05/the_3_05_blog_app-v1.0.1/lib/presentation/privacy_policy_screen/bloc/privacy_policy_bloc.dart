import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_05_blog_app/presentation/privacy_policy_screen/models/privacy_policy_model.dart';
part 'privacy_policy_event.dart';
part 'privacy_policy_state.dart';

/// A bloc that manages the state of a PrivacyPolicy according to the event that is dispatched to it.
class PrivacyPolicyBloc extends Bloc<PrivacyPolicyEvent, PrivacyPolicyState> {
  PrivacyPolicyBloc(PrivacyPolicyState initialState) : super(initialState) {
    on<PrivacyPolicyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PrivacyPolicyInitialEvent event,
    Emitter<PrivacyPolicyState> emit,
  ) async {}
}

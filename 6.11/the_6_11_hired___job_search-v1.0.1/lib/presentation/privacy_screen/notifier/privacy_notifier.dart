import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/privacy_screen/models/privacy_model.dart';
part 'privacy_state.dart';

final privacyNotifier = StateNotifierProvider<PrivacyNotifier, PrivacyState>(
    (ref) => PrivacyNotifier(PrivacyState(privacyModelObj: PrivacyModel())));

/// A notifier that manages the state of a Privacy according to the event that is dispatched to it.
class PrivacyNotifier extends StateNotifier<PrivacyState> {
  PrivacyNotifier(PrivacyState state) : super(state);
}

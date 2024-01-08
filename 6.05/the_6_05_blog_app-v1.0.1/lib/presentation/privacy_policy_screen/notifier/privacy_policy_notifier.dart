import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_05_blog_app/presentation/privacy_policy_screen/models/privacy_policy_model.dart';
part 'privacy_policy_state.dart';

final privacyPolicyNotifier =
    StateNotifierProvider<PrivacyPolicyNotifier, PrivacyPolicyState>(
  (ref) => PrivacyPolicyNotifier(PrivacyPolicyState(
    privacyPolicyModelObj: PrivacyPolicyModel(),
  )),
);

/// A notifier that manages the state of a PrivacyPolicy according to the event that is dispatched to it.
class PrivacyPolicyNotifier extends StateNotifier<PrivacyPolicyState> {
  PrivacyPolicyNotifier(PrivacyPolicyState state) : super(state) {}
}

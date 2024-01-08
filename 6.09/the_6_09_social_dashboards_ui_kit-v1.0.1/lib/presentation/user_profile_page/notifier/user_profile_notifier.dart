import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/user_profile_page/models/user_profile_model.dart';
part 'user_profile_state.dart';

final userProfileNotifier =
    StateNotifierProvider<UserProfileNotifier, UserProfileState>(
  (ref) => UserProfileNotifier(UserProfileState(
    userProfileModelObj: UserProfileModel(),
  )),
);

/// A notifier that manages the state of a UserProfile according to the event that is dispatched to it.
class UserProfileNotifier extends StateNotifier<UserProfileState> {
  UserProfileNotifier(UserProfileState state) : super(state) {}
}

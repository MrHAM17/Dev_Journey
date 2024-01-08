import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/user_profile_tab_container_screen/models/user_profile_tab_container_model.dart';
part 'user_profile_tab_container_state.dart';

final userProfileTabContainerNotifier = StateNotifierProvider<
        UserProfileTabContainerNotifier, UserProfileTabContainerState>(
    (ref) => UserProfileTabContainerNotifier(UserProfileTabContainerState(
        userProfileTabContainerModelObj: UserProfileTabContainerModel())));

/// A notifier that manages the state of a UserProfileTabContainer according to the event that is dispatched to it.
class UserProfileTabContainerNotifier
    extends StateNotifier<UserProfileTabContainerState> {
  UserProfileTabContainerNotifier(UserProfileTabContainerState state)
      : super(state);
}

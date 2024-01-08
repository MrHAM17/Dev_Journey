import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/profile_profile_info_tab_container_screen/models/profile_profile_info_tab_container_model.dart';
part 'profile_profile_info_tab_container_state.dart';

final profileProfileInfoTabContainerNotifier = StateNotifierProvider<
        ProfileProfileInfoTabContainerNotifier,
        ProfileProfileInfoTabContainerState>(
    (ref) => ProfileProfileInfoTabContainerNotifier(
        ProfileProfileInfoTabContainerState(
            profileProfileInfoTabContainerModelObj:
                ProfileProfileInfoTabContainerModel())));

/// A notifier that manages the state of a ProfileProfileInfoTabContainer according to the event that is dispatched to it.
class ProfileProfileInfoTabContainerNotifier
    extends StateNotifier<ProfileProfileInfoTabContainerState> {
  ProfileProfileInfoTabContainerNotifier(
      ProfileProfileInfoTabContainerState state)
      : super(state);
}

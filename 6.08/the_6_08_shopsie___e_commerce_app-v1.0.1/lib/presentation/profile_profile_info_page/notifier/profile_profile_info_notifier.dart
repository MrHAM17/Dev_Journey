import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/profile_profile_info_page/models/profile_profile_info_model.dart';
part 'profile_profile_info_state.dart';

final profileProfileInfoNotifier =
    StateNotifierProvider<ProfileProfileInfoNotifier, ProfileProfileInfoState>(
  (ref) => ProfileProfileInfoNotifier(ProfileProfileInfoState(
    firstNameController: TextEditingController(),
    lastNameController: TextEditingController(),
    emailController: TextEditingController(),
    profileProfileInfoModelObj: ProfileProfileInfoModel(),
  )),
);

/// A notifier that manages the state of a ProfileProfileInfo according to the event that is dispatched to it.
class ProfileProfileInfoNotifier
    extends StateNotifier<ProfileProfileInfoState> {
  ProfileProfileInfoNotifier(ProfileProfileInfoState state) : super(state) {}
}

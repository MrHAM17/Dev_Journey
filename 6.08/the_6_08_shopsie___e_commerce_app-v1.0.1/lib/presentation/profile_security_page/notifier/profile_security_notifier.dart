import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/profile_security_page/models/profile_security_model.dart';
part 'profile_security_state.dart';

final profileSecurityNotifier =
    StateNotifierProvider<ProfileSecurityNotifier, ProfileSecurityState>(
  (ref) => ProfileSecurityNotifier(ProfileSecurityState(
    passwordController: TextEditingController(),
    newpasswordController: TextEditingController(),
    profileSecurityModelObj: ProfileSecurityModel(),
  )),
);

/// A notifier that manages the state of a ProfileSecurity according to the event that is dispatched to it.
class ProfileSecurityNotifier extends StateNotifier<ProfileSecurityState> {
  ProfileSecurityNotifier(ProfileSecurityState state) : super(state) {}
}

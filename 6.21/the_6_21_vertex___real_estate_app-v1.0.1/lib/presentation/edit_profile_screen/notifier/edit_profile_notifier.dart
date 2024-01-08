import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_21_vertex___real_estate_app/presentation/edit_profile_screen/models/edit_profile_model.dart';
part 'edit_profile_state.dart';

final editProfileNotifier =
    StateNotifierProvider<EditProfileNotifier, EditProfileState>(
  (ref) => EditProfileNotifier(EditProfileState(
    fullNameController: TextEditingController(),
    emailController: TextEditingController(),
    addressController: TextEditingController(),
    passwordController: TextEditingController(),
    editProfileModelObj: EditProfileModel(),
  )),
);

/// A notifier that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileNotifier extends StateNotifier<EditProfileState> {
  EditProfileNotifier(EditProfileState state) : super(state) {}
}

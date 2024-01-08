import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/edit_profile_screen/models/edit_profile_model.dart';part 'edit_profile_state.dart';final editProfileNotifier = StateNotifierProvider<EditProfileNotifier, EditProfileState>((ref) => EditProfileNotifier(EditProfileState(lockController: TextEditingController(), settingsController: TextEditingController(), emailController: TextEditingController(), editProfileModelObj: EditProfileModel())));
/// A notifier that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileNotifier extends StateNotifier<EditProfileState> {EditProfileNotifier(EditProfileState state) : super(state);

 }

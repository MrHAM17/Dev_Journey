import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/profile_page/models/profile_model.dart';
part 'profile_state.dart';

final profileNotifier = StateNotifierProvider<ProfileNotifier, ProfileState>(
    (ref) => ProfileNotifier(ProfileState(profileModelObj: ProfileModel())));

/// A notifier that manages the state of a Profile according to the event that is dispatched to it.
class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(ProfileState state) : super(state);
}

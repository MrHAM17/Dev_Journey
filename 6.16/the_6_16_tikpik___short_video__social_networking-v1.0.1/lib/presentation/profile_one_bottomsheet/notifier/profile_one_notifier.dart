import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/profile_one_bottomsheet/models/profile_one_model.dart';
part 'profile_one_state.dart';

final profileOneNotifier =
    StateNotifierProvider<ProfileOneNotifier, ProfileOneState>(
  (ref) => ProfileOneNotifier(ProfileOneState(
    profileOneModelObj: ProfileOneModel(),
  )),
);

/// A notifier that manages the state of a ProfileOne according to the event that is dispatched to it.
class ProfileOneNotifier extends StateNotifier<ProfileOneState> {
  ProfileOneNotifier(ProfileOneState state) : super(state) {}
}

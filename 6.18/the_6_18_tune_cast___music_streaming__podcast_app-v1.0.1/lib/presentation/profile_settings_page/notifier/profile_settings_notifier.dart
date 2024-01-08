import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/profile_settings_page/models/profile_settings_model.dart';part 'profile_settings_state.dart';final profileSettingsNotifier = StateNotifierProvider<ProfileSettingsNotifier, ProfileSettingsState>((ref) => ProfileSettingsNotifier(ProfileSettingsState(isSelectedSwitch: false, profileSettingsModelObj: ProfileSettingsModel())));
/// A notifier that manages the state of a ProfileSettings according to the event that is dispatched to it.
class ProfileSettingsNotifier extends StateNotifier<ProfileSettingsState> {ProfileSettingsNotifier(ProfileSettingsState state) : super(state);

void changeSwitchBox1(bool value) { state = state.copyWith(isSelectedSwitch: value); } 
 }

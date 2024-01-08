import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/profile_page/models/profile_model.dart';
part 'profile_state.dart';

final profileNotifier = StateNotifierProvider<ProfileNotifier, ProfileState>(
    (ref) => ProfileNotifier(ProfileState(
            profileModelObj: ProfileModel(profileItemList: [
          ProfileItemModel(
              heartrate: ImageConstant.imgTelevision,
              heartRate: "Heart rate",
              bpm: "215bpm"),
          ProfileItemModel(
              heartrate: ImageConstant.imgSettingsWhiteA700,
              heartRate: "Calories",
              bpm: "756cal"),
          ProfileItemModel(
              heartrate: ImageConstant.imgThumbsUpWhiteA700,
              heartRate: "Weight",
              bpm: "103lbs")
        ]))));

/// A notifier that manages the state of a Profile according to the event that is dispatched to it.
class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(ProfileState state) : super(state);
}

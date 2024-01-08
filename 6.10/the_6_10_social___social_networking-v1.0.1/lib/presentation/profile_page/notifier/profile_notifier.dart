import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/profile_page/models/profile_model.dart';
part 'profile_state.dart';

final profileNotifier = StateNotifierProvider<ProfileNotifier, ProfileState>(
    (ref) => ProfileNotifier(ProfileState(
            profileModelObj: ProfileModel(profileItemList: [
          ProfileItemModel(
              rosalia: "Rosalia",
              duration: "35 minutes ago",
              mostPeopleNever:
                  "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
              zipcode: "2200",
              eightHundred: "800")
        ]))));

/// A notifier that manages the state of a Profile according to the event that is dispatched to it.
class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(ProfileState state) : super(state);
}

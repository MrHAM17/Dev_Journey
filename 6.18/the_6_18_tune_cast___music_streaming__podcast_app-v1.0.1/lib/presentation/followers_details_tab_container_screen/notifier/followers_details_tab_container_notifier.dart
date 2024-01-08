import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_tab_container_screen/models/followers_details_tab_container_model.dart';part 'followers_details_tab_container_state.dart';final followersDetailsTabContainerNotifier = StateNotifierProvider<FollowersDetailsTabContainerNotifier, FollowersDetailsTabContainerState>((ref) => FollowersDetailsTabContainerNotifier(FollowersDetailsTabContainerState(followersDetailsTabContainerModelObj: FollowersDetailsTabContainerModel())));
/// A notifier that manages the state of a FollowersDetailsTabContainer according to the event that is dispatched to it.
class FollowersDetailsTabContainerNotifier extends StateNotifier<FollowersDetailsTabContainerState> {FollowersDetailsTabContainerNotifier(FollowersDetailsTabContainerState state) : super(state);

 }

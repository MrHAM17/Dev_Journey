import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/followers_tab_container_screen/models/followers_tab_container_model.dart';part 'followers_tab_container_state.dart';final followersTabContainerNotifier = StateNotifierProvider<FollowersTabContainerNotifier, FollowersTabContainerState>((ref) => FollowersTabContainerNotifier(FollowersTabContainerState(followersTabContainerModelObj: FollowersTabContainerModel())));
/// A notifier that manages the state of a FollowersTabContainer according to the event that is dispatched to it.
class FollowersTabContainerNotifier extends StateNotifier<FollowersTabContainerState> {FollowersTabContainerNotifier(FollowersTabContainerState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/autolayoutvertical_item_model.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/profile_page/models/profile_model.dart';part 'profile_state.dart';final profileNotifier = StateNotifierProvider<ProfileNotifier, ProfileState>((ref) => ProfileNotifier(ProfileState(profileModelObj: ProfileModel(autolayoutverticalItemList: [AutolayoutverticalItemModel(k: ImageConstant.imgImage5, k1: ImageConstant.imgOverflowmenuPrimary, k2: "367.5K", k3: ImageConstant.imgImage6, overflowMenu: ImageConstant.imgOverflowMenuPrimary16x16, k4: "837.9K")]))));
/// A notifier that manages the state of a Profile according to the event that is dispatched to it.
class ProfileNotifier extends StateNotifier<ProfileState> {ProfileNotifier(ProfileState state) : super(state);

 }

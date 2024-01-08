import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/autolayoutvertical6_item_model.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/profile_two_page/models/profile_two_model.dart';part 'profile_two_state.dart';final profileTwoNotifier = StateNotifierProvider<ProfileTwoNotifier, ProfileTwoState>((ref) => ProfileTwoNotifier(ProfileTwoState(profileTwoModelObj: ProfileTwoModel(autolayoutvertical6ItemList: [Autolayoutvertical6ItemModel(k: ImageConstant.imgImage72, k1: ImageConstant.imgOverflowmenuPrimary, k2: "367.5K", k3: ImageConstant.imgImage73, overflowMenu: ImageConstant.imgOverflowMenuPrimary16x16, k4: "837.9K")]))));
/// A notifier that manages the state of a ProfileTwo according to the event that is dispatched to it.
class ProfileTwoNotifier extends StateNotifier<ProfileTwoState> {ProfileTwoNotifier(ProfileTwoState state) : super(state);

 }

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ninetyfive_item_model.dart';
import '../models/following1_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_page/models/followers_details_model.dart';
part 'followers_details_state.dart';

final followersDetailsNotifier =
    StateNotifierProvider<FollowersDetailsNotifier, FollowersDetailsState>(
  (ref) => FollowersDetailsNotifier(FollowersDetailsState(
    followersDetailsModelObj: FollowersDetailsModel(ninetyfiveItemList: [
      NinetyfiveItemModel(
          jennyWilson: ImageConstant.imgImage78,
          artistName: "Jenny Wilson",
          followersCounter: "9,489 Followers"),
      NinetyfiveItemModel(
          jennyWilson: ImageConstant.imgImage79,
          artistName: "Jenny Foose",
          followersCounter: "8,811 Followers")
    ], following1ItemList: List.generate(1, (index) => Following1ItemModel())),
  )),
);

/// A notifier that manages the state of a FollowersDetails according to the event that is dispatched to it.
class FollowersDetailsNotifier extends StateNotifier<FollowersDetailsState> {
  FollowersDetailsNotifier(FollowersDetailsState state) : super(state) {}
}

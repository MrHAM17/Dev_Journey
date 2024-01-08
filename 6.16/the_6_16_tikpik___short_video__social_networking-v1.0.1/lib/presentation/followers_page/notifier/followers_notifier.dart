import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/followers_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/followers_page/models/followers_model.dart';
part 'followers_state.dart';

final followersNotifier =
    StateNotifierProvider<FollowersNotifier, FollowersState>(
  (ref) => FollowersNotifier(FollowersState(
    followersModelObj: FollowersModel(followersItemList: [
      FollowersItemModel(
          darcelBallentine: ImageConstant.imgEllipse2,
          darcelBallentine1: "Darcel Ballentine",
          price: "darcelballentine | 26.37K "),
      FollowersItemModel(
          darcelBallentine: ImageConstant.imgEllipse3,
          darcelBallentine1: "Rayford Chenail",
          price: "rayfordchenail | 42.9K"),
      FollowersItemModel(
          darcelBallentine: ImageConstant.imgEllipse4,
          darcelBallentine1: "Cyndy Lillibridge",
          price: "cyndylillibridge | 65.1M"),
      FollowersItemModel(
          darcelBallentine: ImageConstant.imgEllipse5,
          darcelBallentine1: "Chieko Chute",
          price: "chiekochute | 86.67M"),
      FollowersItemModel(
          darcelBallentine: ImageConstant.imgEllipse6,
          darcelBallentine1: "Merrill Kervin",
          price: "merrillkervin | 41.31K"),
      FollowersItemModel(
          darcelBallentine: ImageConstant.imgEllipse7,
          darcelBallentine1: "Augustina Midgett",
          price: "augustinamidgett | 36.52M")
    ]),
  )),
);

/// A notifier that manages the state of a Followers according to the event that is dispatched to it.
class FollowersNotifier extends StateNotifier<FollowersState> {
  FollowersNotifier(FollowersState state) : super(state) {}
}

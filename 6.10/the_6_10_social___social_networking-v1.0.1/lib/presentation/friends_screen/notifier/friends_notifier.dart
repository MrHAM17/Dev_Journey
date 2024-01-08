import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightythree_item_model.dart';
import '../models/follow_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/friends_screen/models/friends_model.dart';
part 'friends_state.dart';

final friendsNotifier = StateNotifierProvider<FriendsNotifier, FriendsState>(
    (ref) => FriendsNotifier(FriendsState(
        searchController: TextEditingController(),
        friendsModelObj: FriendsModel(eightythreeItemList: [
          EightythreeItemModel(trash: ImageConstant.imgTrashBlue500),
          EightythreeItemModel(trash: ImageConstant.imgFacebookBlueA400),
          EightythreeItemModel(trash: ImageConstant.imgThumbsUp)
        ], followItemList: [
          FollowItemModel(
              kevinAllsrub: ImageConstant.imgEllipse5,
              kevinAllsrub1: "Kevin Allsrub",
              yourEFriendsOn: "Your’e friends on twitter"),
          FollowItemModel(
              kevinAllsrub: ImageConstant.imgEllipse6,
              kevinAllsrub1: "Sarah Owen",
              yourEFriendsOn: "Your’e friends on twitter"),
          FollowItemModel(
              kevinAllsrub: ImageConstant.imgEllipse7,
              kevinAllsrub1: "Rick Onad",
              yourEFriendsOn: "Your’e friends on twitter"),
          FollowItemModel(
              kevinAllsrub: ImageConstant.imgEllipse8,
              kevinAllsrub1: "Steven Ford",
              yourEFriendsOn: "Your’e friends on twitter"),
          FollowItemModel(
              kevinAllsrub: ImageConstant.imgEllipse9,
              kevinAllsrub1: "Lucas Anna ",
              yourEFriendsOn: "Your’e friends on twitter"),
          FollowItemModel(
              kevinAllsrub: ImageConstant.imgEllipse10,
              kevinAllsrub1: "Nabila Remaar",
              yourEFriendsOn: "Your’e friends on twitter")
        ]))));

/// A notifier that manages the state of a Friends according to the event that is dispatched to it.
class FriendsNotifier extends StateNotifier<FriendsState> {
  FriendsNotifier(FriendsState state) : super(state);
}

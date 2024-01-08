import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/myfriends_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/my_friends_screen/models/my_friends_model.dart';
part 'my_friends_state.dart';

final myFriendsNotifier =
    StateNotifierProvider<MyFriendsNotifier, MyFriendsState>(
        (ref) => MyFriendsNotifier(MyFriendsState(
            searchController: TextEditingController(),
            myFriendsModelObj: MyFriendsModel(myfriendsItemList: [
              MyfriendsItemModel(
                  username: "Logan Nasser", fullname: "@louisaingram"),
              MyfriendsItemModel(
                  username: "Logan Nasser", fullname: "@louisaingram"),
              MyfriendsItemModel(
                  username: "Logan Nasser", fullname: "@louisaingram"),
              MyfriendsItemModel(
                  username: "Logan Nasser", fullname: "@louisaingram"),
              MyfriendsItemModel(
                  username: "Logan Nasser", fullname: "@louisaingram")
            ]))));

/// A notifier that manages the state of a MyFriends according to the event that is dispatched to it.
class MyFriendsNotifier extends StateNotifier<MyFriendsState> {
  MyFriendsNotifier(MyFriendsState state) : super(state);
}

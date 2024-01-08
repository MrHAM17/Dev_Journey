import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/findfriends_item_model.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/find_friends_screen/models/find_friends_model.dart';part 'find_friends_state.dart';final findFriendsNotifier = StateNotifierProvider<FindFriendsNotifier, FindFriendsState>((ref) => FindFriendsNotifier(FindFriendsState(searchController: TextEditingController(), findFriendsModelObj: FindFriendsModel(findfriendsItemList: [FindfriendsItemModel(categoriesShare: ImageConstant.imgCategoriesSharePrimary, inviteFriends: "Invite Friends", stayConnectedWith: "Stay Connected with friends")]))));
/// A notifier that manages the state of a FindFriends according to the event that is dispatched to it.
class FindFriendsNotifier extends StateNotifier<FindFriendsState> {FindFriendsNotifier(FindFriendsState state) : super(state);

 }

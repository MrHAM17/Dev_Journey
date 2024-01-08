import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/findfriends_item_model.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/find_friends_screen/models/find_friends_model.dart';part 'find_friends_event.dart';part 'find_friends_state.dart';/// A bloc that manages the state of a FindFriends according to the event that is dispatched to it.
class FindFriendsBloc extends Bloc<FindFriendsEvent, FindFriendsState> {FindFriendsBloc(FindFriendsState initialState) : super(initialState) { on<FindFriendsInitialEvent>(_onInitialize); }

List<FindfriendsItemModel> fillFindfriendsItemList() { return [FindfriendsItemModel(categoriesShare: ImageConstant.imgCategoriesSharePrimary, inviteFriends: "Invite Friends", stayConnectedWith: "Stay Connected with friends")]; } 
_onInitialize(FindFriendsInitialEvent event, Emitter<FindFriendsState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(findFriendsModelObj: state.findFriendsModelObj?.copyWith(findfriendsItemList: fillFindfriendsItemList()))); } 
 }

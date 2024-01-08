import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresultsusers_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/search_results_users_page/models/search_results_users_model.dart';
part 'search_results_users_state.dart';

final searchResultsUsersNotifier =
    StateNotifierProvider<SearchResultsUsersNotifier, SearchResultsUsersState>(
  (ref) => SearchResultsUsersNotifier(SearchResultsUsersState(
    searchResultsUsersModelObj:
        SearchResultsUsersModel(searchresultsusersItemList: [
      SearchresultsusersItemModel(
          darcelBallentine: ImageConstant.imgEllipse2,
          darcelBallentine1: "Darcel Ballentine",
          price: "darcelballentine | 26.37K "),
      SearchresultsusersItemModel(
          darcelBallentine: ImageConstant.imgEllipse3,
          darcelBallentine1: "Rayford Chenail",
          price: "rayfordchenail | 42.9K"),
      SearchresultsusersItemModel(
          darcelBallentine: ImageConstant.imgEllipse4,
          darcelBallentine1: "Cyndy Lillibridge",
          price: "cyndylillibridge | 65.1M"),
      SearchresultsusersItemModel(
          darcelBallentine: ImageConstant.imgEllipse5,
          darcelBallentine1: "Chieko Chute",
          price: "chiekochute | 86.67M"),
      SearchresultsusersItemModel(
          darcelBallentine: ImageConstant.imgEllipse6,
          darcelBallentine1: "Merrill Kervin",
          price: "merrillkervin | 41.31K"),
      SearchresultsusersItemModel(
          darcelBallentine: ImageConstant.imgEllipse7,
          darcelBallentine1: "Augustina Midgett",
          price: "augustinamidgett | 36.52M")
    ]),
  )),
);

/// A notifier that manages the state of a SearchResultsUsers according to the event that is dispatched to it.
class SearchResultsUsersNotifier
    extends StateNotifier<SearchResultsUsersState> {
  SearchResultsUsersNotifier(SearchResultsUsersState state) : super(state) {}
}

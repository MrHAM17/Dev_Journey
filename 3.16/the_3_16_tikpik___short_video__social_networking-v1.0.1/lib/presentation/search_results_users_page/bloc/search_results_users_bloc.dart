import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresultsusers_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_users_page/models/search_results_users_model.dart';
part 'search_results_users_event.dart';
part 'search_results_users_state.dart';

/// A bloc that manages the state of a SearchResultsUsers according to the event that is dispatched to it.
class SearchResultsUsersBloc
    extends Bloc<SearchResultsUsersEvent, SearchResultsUsersState> {
  SearchResultsUsersBloc(SearchResultsUsersState initialState)
      : super(initialState) {
    on<SearchResultsUsersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsUsersInitialEvent event,
    Emitter<SearchResultsUsersState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsUsersModelObj: state.searchResultsUsersModelObj?.copyWith(
      searchresultsusersItemList: fillSearchresultsusersItemList(),
    )));
  }

  List<SearchresultsusersItemModel> fillSearchresultsusersItemList() {
    return [
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
    ];
  }
}

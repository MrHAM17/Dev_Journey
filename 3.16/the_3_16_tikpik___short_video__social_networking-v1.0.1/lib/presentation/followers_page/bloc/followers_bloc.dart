import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/followers_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/followers_page/models/followers_model.dart';
part 'followers_event.dart';
part 'followers_state.dart';

/// A bloc that manages the state of a Followers according to the event that is dispatched to it.
class FollowersBloc extends Bloc<FollowersEvent, FollowersState> {
  FollowersBloc(FollowersState initialState) : super(initialState) {
    on<FollowersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FollowersInitialEvent event,
    Emitter<FollowersState> emit,
  ) async {
    emit(state.copyWith(
        followersModelObj: state.followersModelObj?.copyWith(
      followersItemList: fillFollowersItemList(),
    )));
  }

  List<FollowersItemModel> fillFollowersItemList() {
    return [
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
    ];
  }
}

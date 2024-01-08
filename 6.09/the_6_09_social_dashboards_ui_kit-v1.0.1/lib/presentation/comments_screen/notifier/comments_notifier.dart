import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/comments_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/comments_screen/models/comments_model.dart';
part 'comments_state.dart';

final commentsNotifier = StateNotifierProvider<CommentsNotifier, CommentsState>(
  (ref) => CommentsNotifier(CommentsState(
    commentsModelObj: CommentsModel(commentsItemList: [
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteSecondarycontainer),
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteGray500),
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteSecondarycontainer),
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteSecondarycontainer)
    ]),
  )),
);

/// A notifier that manages the state of a Comments according to the event that is dispatched to it.
class CommentsNotifier extends StateNotifier<CommentsState> {
  CommentsNotifier(CommentsState state) : super(state) {}
}

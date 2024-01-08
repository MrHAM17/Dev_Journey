import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/comments_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/comments_bottomsheet/models/comments_model.dart';
part 'comments_state.dart';

final commentsNotifier = StateNotifierProvider<CommentsNotifier, CommentsState>(
  (ref) => CommentsNotifier(CommentsState(
    commentController: TextEditingController(),
    commentsModelObj: CommentsModel(commentsItemList: [
      CommentsItemModel(
          adipiscingElit:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
          kristinWatson: "Kristin Watson",
          image: ImageConstant.imgIconlyBoldHeart,
          text: "938",
          duration: "3 days ago",
          reply: "Reply"),
      CommentsItemModel(
          adipiscingElit:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
          kristinWatson: "Ralph Edwards",
          image: ImageConstant.imgFavorite,
          text: "847",
          duration: "2 days ago",
          reply: "Reply")
    ]),
  )),
);

/// A notifier that manages the state of a Comments according to the event that is dispatched to it.
class CommentsNotifier extends StateNotifier<CommentsState> {
  CommentsNotifier(CommentsState state) : super(state) {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/commentlist_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/comments_screen/models/comments_model.dart';
part 'comments_state.dart';

final commentsNotifier = StateNotifierProvider<CommentsNotifier, CommentsState>(
  (ref) => CommentsNotifier(CommentsState(
    commentController: TextEditingController(),
    commentsModelObj: CommentsModel(commentlistItemList: [
      CommentlistItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          reply: "Reply"),
      CommentlistItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          reply: "Reply"),
      CommentlistItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          reply: "Reply")
    ]),
  )),
);

/// A notifier that manages the state of a Comments according to the event that is dispatched to it.
class CommentsNotifier extends StateNotifier<CommentsState> {
  CommentsNotifier(CommentsState state) : super(state) {}
}

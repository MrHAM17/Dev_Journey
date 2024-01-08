import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/comments_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/comments_bottomsheet/models/comments_model.dart';
part 'comments_event.dart';
part 'comments_state.dart';

/// A bloc that manages the state of a Comments according to the event that is dispatched to it.
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc(CommentsState initialState) : super(initialState) {
    on<CommentsInitialEvent>(_onInitialize);
  }

  List<CommentsItemModel> fillCommentsItemList() {
    return [
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
    ];
  }

  _onInitialize(
    CommentsInitialEvent event,
    Emitter<CommentsState> emit,
  ) async {
    emit(state.copyWith(
      commentController: TextEditingController(),
    ));
    emit(state.copyWith(
        commentsModelObj: state.commentsModelObj?.copyWith(
      commentsItemList: fillCommentsItemList(),
    )));
  }
}

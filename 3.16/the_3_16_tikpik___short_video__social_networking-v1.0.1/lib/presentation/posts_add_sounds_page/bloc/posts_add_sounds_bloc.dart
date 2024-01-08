import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/postsaddsounds_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_page/models/posts_add_sounds_model.dart';
part 'posts_add_sounds_event.dart';
part 'posts_add_sounds_state.dart';

/// A bloc that manages the state of a PostsAddSounds according to the event that is dispatched to it.
class PostsAddSoundsBloc
    extends Bloc<PostsAddSoundsEvent, PostsAddSoundsState> {
  PostsAddSoundsBloc(PostsAddSoundsState initialState) : super(initialState) {
    on<PostsAddSoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsAddSoundsInitialEvent event,
    Emitter<PostsAddSoundsState> emit,
  ) async {
    emit(state.copyWith(
        postsAddSoundsModelObj: state.postsAddSoundsModelObj?.copyWith(
      postsaddsoundsItemList: fillPostsaddsoundsItemList(),
    )));
  }

  List<PostsaddsoundsItemModel> fillPostsaddsoundsItemList() {
    return [
      PostsaddsoundsItemModel(
          asItWas: ImageConstant.imgImage15,
          overflowMenu: ImageConstant.imgOverflowMenuOnerrorcontainer,
          asItWas1: "As It Was",
          harryStyles: "Harry Styles",
          time: "01:00",
          distance: "65.1M",
          m: ImageConstant.imgBookmarkPrimary24x24)
    ];
  }
}

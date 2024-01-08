import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/postsaddsounds_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_page/models/posts_add_sounds_model.dart';
part 'posts_add_sounds_state.dart';

final postsAddSoundsNotifier =
    StateNotifierProvider<PostsAddSoundsNotifier, PostsAddSoundsState>(
  (ref) => PostsAddSoundsNotifier(PostsAddSoundsState(
    postsAddSoundsModelObj: PostsAddSoundsModel(postsaddsoundsItemList: [
      PostsaddsoundsItemModel(
          asItWas: ImageConstant.imgImage15,
          overflowMenu: ImageConstant.imgOverflowMenuOnerrorcontainer,
          asItWas1: "As It Was",
          harryStyles: "Harry Styles",
          time: "01:00",
          distance: "65.1M",
          m: ImageConstant.imgBookmarkPrimary24x24)
    ]),
  )),
);

/// A notifier that manages the state of a PostsAddSounds according to the event that is dispatched to it.
class PostsAddSoundsNotifier extends StateNotifier<PostsAddSoundsState> {
  PostsAddSoundsNotifier(PostsAddSoundsState state) : super(state) {}
}

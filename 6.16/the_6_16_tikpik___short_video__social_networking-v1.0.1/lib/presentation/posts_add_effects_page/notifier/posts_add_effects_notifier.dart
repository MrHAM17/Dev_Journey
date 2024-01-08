import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/postsaddeffects_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_add_effects_page/models/posts_add_effects_model.dart';
part 'posts_add_effects_state.dart';

final postsAddEffectsNotifier =
    StateNotifierProvider<PostsAddEffectsNotifier, PostsAddEffectsState>(
  (ref) => PostsAddEffectsNotifier(PostsAddEffectsState(
    postsAddEffectsModelObj: PostsAddEffectsModel(postsaddeffectsItemList: [
      PostsaddeffectsItemModel(
          image: ImageConstant.imgImage45,
          image1: ImageConstant.imgImage46,
          image2: ImageConstant.imgImage47,
          image3: ImageConstant.imgImage48,
          image4: ImageConstant.imgImage49,
          image5: ImageConstant.imgImage50)
    ]),
  )),
);

/// A notifier that manages the state of a PostsAddEffects according to the event that is dispatched to it.
class PostsAddEffectsNotifier extends StateNotifier<PostsAddEffectsState> {
  PostsAddEffectsNotifier(PostsAddEffectsState state) : super(state) {}
}

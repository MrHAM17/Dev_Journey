import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_add_effects_tab_container_screen/models/posts_add_effects_tab_container_model.dart';
part 'posts_add_effects_tab_container_state.dart';

final postsAddEffectsTabContainerNotifier = StateNotifierProvider<
    PostsAddEffectsTabContainerNotifier, PostsAddEffectsTabContainerState>(
  (ref) => PostsAddEffectsTabContainerNotifier(PostsAddEffectsTabContainerState(
    postsAddEffectsTabContainerModelObj: PostsAddEffectsTabContainerModel(),
  )),
);

/// A notifier that manages the state of a PostsAddEffectsTabContainer according to the event that is dispatched to it.
class PostsAddEffectsTabContainerNotifier
    extends StateNotifier<PostsAddEffectsTabContainerState> {
  PostsAddEffectsTabContainerNotifier(PostsAddEffectsTabContainerState state)
      : super(state) {}
}

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_tab_container_screen/models/posts_add_sounds_tab_container_model.dart';part 'posts_add_sounds_tab_container_state.dart';final postsAddSoundsTabContainerNotifier = StateNotifierProvider<PostsAddSoundsTabContainerNotifier, PostsAddSoundsTabContainerState>((ref) => PostsAddSoundsTabContainerNotifier(PostsAddSoundsTabContainerState(searchController: TextEditingController(), postsAddSoundsTabContainerModelObj: PostsAddSoundsTabContainerModel())));
/// A notifier that manages the state of a PostsAddSoundsTabContainer according to the event that is dispatched to it.
class PostsAddSoundsTabContainerNotifier extends StateNotifier<PostsAddSoundsTabContainerState> {PostsAddSoundsTabContainerNotifier(PostsAddSoundsTabContainerState state) : super(state);

 }

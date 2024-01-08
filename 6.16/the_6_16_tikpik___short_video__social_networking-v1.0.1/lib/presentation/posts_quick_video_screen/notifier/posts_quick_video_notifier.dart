import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_quick_video_screen/models/posts_quick_video_model.dart';part 'posts_quick_video_state.dart';final postsQuickVideoNotifier = StateNotifierProvider<PostsQuickVideoNotifier, PostsQuickVideoState>((ref) => PostsQuickVideoNotifier(PostsQuickVideoState(postsQuickVideoModelObj: PostsQuickVideoModel())));
/// A notifier that manages the state of a PostsQuickVideo according to the event that is dispatched to it.
class PostsQuickVideoNotifier extends StateNotifier<PostsQuickVideoState> {PostsQuickVideoNotifier(PostsQuickVideoState state) : super(state);

 }

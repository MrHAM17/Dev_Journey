import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_edit_page_screen/models/posts_edit_page_model.dart';part 'posts_edit_page_state.dart';final postsEditPageNotifier = StateNotifierProvider<PostsEditPageNotifier, PostsEditPageState>((ref) => PostsEditPageNotifier(PostsEditPageState(postsEditPageModelObj: PostsEditPageModel())));
/// A notifier that manages the state of a PostsEditPage according to the event that is dispatched to it.
class PostsEditPageNotifier extends StateNotifier<PostsEditPageState> {PostsEditPageNotifier(PostsEditPageState state) : super(state);

 }

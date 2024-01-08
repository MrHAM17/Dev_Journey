import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_templates_screen/models/posts_templates_model.dart';part 'posts_templates_state.dart';final postsTemplatesNotifier = StateNotifierProvider<PostsTemplatesNotifier, PostsTemplatesState>((ref) => PostsTemplatesNotifier(PostsTemplatesState(postsTemplatesModelObj: PostsTemplatesModel())));
/// A notifier that manages the state of a PostsTemplates according to the event that is dispatched to it.
class PostsTemplatesNotifier extends StateNotifier<PostsTemplatesState> {PostsTemplatesNotifier(PostsTemplatesState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_quick_photo_screen/models/posts_quick_photo_model.dart';part 'posts_quick_photo_state.dart';final postsQuickPhotoNotifier = StateNotifierProvider<PostsQuickPhotoNotifier, PostsQuickPhotoState>((ref) => PostsQuickPhotoNotifier(PostsQuickPhotoState(postsQuickPhotoModelObj: PostsQuickPhotoModel())));
/// A notifier that manages the state of a PostsQuickPhoto according to the event that is dispatched to it.
class PostsQuickPhotoNotifier extends StateNotifier<PostsQuickPhotoState> {PostsQuickPhotoNotifier(PostsQuickPhotoState state) : super(state);

 }

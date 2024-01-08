import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/posts_upload_media_tab_container_screen/models/posts_upload_media_tab_container_model.dart';part 'posts_upload_media_tab_container_state.dart';final postsUploadMediaTabContainerNotifier = StateNotifierProvider<PostsUploadMediaTabContainerNotifier, PostsUploadMediaTabContainerState>((ref) => PostsUploadMediaTabContainerNotifier(PostsUploadMediaTabContainerState(postsUploadMediaTabContainerModelObj: PostsUploadMediaTabContainerModel())));
/// A notifier that manages the state of a PostsUploadMediaTabContainer according to the event that is dispatched to it.
class PostsUploadMediaTabContainerNotifier extends StateNotifier<PostsUploadMediaTabContainerState> {PostsUploadMediaTabContainerNotifier(PostsUploadMediaTabContainerState state) : super(state);

 }

import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_quick_video_screen/models/posts_quick_video_model.dart';/// A provider class for the PostsQuickVideoScreen.
///
/// This provider manages the state of the PostsQuickVideoScreen, including the
/// current postsQuickVideoModelObj

// ignore_for_file: must_be_immutable
class PostsQuickVideoProvider extends ChangeNotifier {PostsQuickVideoModel postsQuickVideoModelObj = PostsQuickVideoModel();

@override void dispose() { super.dispose(); } 
 }

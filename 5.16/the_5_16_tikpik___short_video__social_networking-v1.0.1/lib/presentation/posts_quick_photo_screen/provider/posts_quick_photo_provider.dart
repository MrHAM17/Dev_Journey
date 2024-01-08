import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_quick_photo_screen/models/posts_quick_photo_model.dart';/// A provider class for the PostsQuickPhotoScreen.
///
/// This provider manages the state of the PostsQuickPhotoScreen, including the
/// current postsQuickPhotoModelObj

// ignore_for_file: must_be_immutable
class PostsQuickPhotoProvider extends ChangeNotifier {PostsQuickPhotoModel postsQuickPhotoModelObj = PostsQuickPhotoModel();

@override void dispose() { super.dispose(); } 
 }

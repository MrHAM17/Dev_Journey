import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_edit_page_screen/models/posts_edit_page_model.dart';/// A provider class for the PostsEditPageScreen.
///
/// This provider manages the state of the PostsEditPageScreen, including the
/// current postsEditPageModelObj

// ignore_for_file: must_be_immutable
class PostsEditPageProvider extends ChangeNotifier {PostsEditPageModel postsEditPageModelObj = PostsEditPageModel();

@override void dispose() { super.dispose(); } 
 }

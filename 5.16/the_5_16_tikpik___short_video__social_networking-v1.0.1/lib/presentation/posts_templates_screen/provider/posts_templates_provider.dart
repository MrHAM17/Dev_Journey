import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_templates_screen/models/posts_templates_model.dart';/// A provider class for the PostsTemplatesScreen.
///
/// This provider manages the state of the PostsTemplatesScreen, including the
/// current postsTemplatesModelObj

// ignore_for_file: must_be_immutable
class PostsTemplatesProvider extends ChangeNotifier {PostsTemplatesModel postsTemplatesModelObj = PostsTemplatesModel();

@override void dispose() { super.dispose(); } 
 }

import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_page/models/posts_add_sounds_model.dart';import '../models/postsaddsounds_item_model.dart';/// A provider class for the PostsAddSoundsPage.
///
/// This provider manages the state of the PostsAddSoundsPage, including the
/// current postsAddSoundsModelObj

// ignore_for_file: must_be_immutable
class PostsAddSoundsProvider extends ChangeNotifier {PostsAddSoundsModel postsAddSoundsModelObj = PostsAddSoundsModel();

@override void dispose() { super.dispose(); } 
 }

import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_add_effects_page/models/posts_add_effects_model.dart';import '../models/postsaddeffects_item_model.dart';/// A provider class for the PostsAddEffectsPage.
///
/// This provider manages the state of the PostsAddEffectsPage, including the
/// current postsAddEffectsModelObj

// ignore_for_file: must_be_immutable
class PostsAddEffectsProvider extends ChangeNotifier {PostsAddEffectsModel postsAddEffectsModelObj = PostsAddEffectsModel();

@override void dispose() { super.dispose(); } 
 }

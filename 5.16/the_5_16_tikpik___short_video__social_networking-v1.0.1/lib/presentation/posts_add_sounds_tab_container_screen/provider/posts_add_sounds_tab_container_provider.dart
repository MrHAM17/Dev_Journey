import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_tab_container_screen/models/posts_add_sounds_tab_container_model.dart';/// A provider class for the PostsAddSoundsTabContainerScreen.
///
/// This provider manages the state of the PostsAddSoundsTabContainerScreen, including the
/// current postsAddSoundsTabContainerModelObj

// ignore_for_file: must_be_immutable
class PostsAddSoundsTabContainerProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

PostsAddSoundsTabContainerModel postsAddSoundsTabContainerModelObj = PostsAddSoundsTabContainerModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }

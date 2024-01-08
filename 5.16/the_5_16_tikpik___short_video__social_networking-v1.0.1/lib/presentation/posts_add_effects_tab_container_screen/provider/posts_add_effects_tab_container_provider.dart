import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_add_effects_tab_container_screen/models/posts_add_effects_tab_container_model.dart';

/// A provider class for the PostsAddEffectsTabContainerScreen.
///
/// This provider manages the state of the PostsAddEffectsTabContainerScreen, including the
/// current postsAddEffectsTabContainerModelObj
class PostsAddEffectsTabContainerProvider extends ChangeNotifier {
  PostsAddEffectsTabContainerModel postsAddEffectsTabContainerModelObj =
      PostsAddEffectsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

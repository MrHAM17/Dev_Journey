import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/posts_add_effects_tab_container_screen/models/posts_add_effects_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PostsAddEffectsTabContainerScreen.
///
/// This class manages the state of the PostsAddEffectsTabContainerScreen, including the
/// current postsAddEffectsTabContainerModelObj
class PostsAddEffectsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<PostsAddEffectsTabContainerModel> postsAddEffectsTabContainerModelObj =
      PostsAddEffectsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}

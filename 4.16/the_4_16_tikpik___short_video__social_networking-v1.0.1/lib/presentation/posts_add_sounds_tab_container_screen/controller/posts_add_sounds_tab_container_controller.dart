import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_tab_container_screen/models/posts_add_sounds_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the PostsAddSoundsTabContainerScreen.
///
/// This class manages the state of the PostsAddSoundsTabContainerScreen, including the
/// current postsAddSoundsTabContainerModelObj
class PostsAddSoundsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController searchController = TextEditingController();

Rx<PostsAddSoundsTabContainerModel> postsAddSoundsTabContainerModelObj = PostsAddSoundsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }

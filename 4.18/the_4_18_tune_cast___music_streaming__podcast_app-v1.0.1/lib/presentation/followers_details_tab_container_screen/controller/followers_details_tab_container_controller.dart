import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_tab_container_screen/models/followers_details_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the FollowersDetailsTabContainerScreen.
///
/// This class manages the state of the FollowersDetailsTabContainerScreen, including the
/// current followersDetailsTabContainerModelObj
class FollowersDetailsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<FollowersDetailsTabContainerModel> followersDetailsTabContainerModelObj = FollowersDetailsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }

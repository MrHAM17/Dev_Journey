import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/followers_tab_container_screen/models/followers_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the FollowersTabContainerScreen.
///
/// This class manages the state of the FollowersTabContainerScreen, including the
/// current followersTabContainerModelObj
class FollowersTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<FollowersTabContainerModel> followersTabContainerModelObj = FollowersTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }

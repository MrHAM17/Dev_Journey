import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/profile_tab_container_screen/models/profile_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileTabContainerScreen.
///
/// This class manages the state of the ProfileTabContainerScreen, including the
/// current profileTabContainerModelObj
class ProfileTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ProfileTabContainerModel> profileTabContainerModelObj = ProfileTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }

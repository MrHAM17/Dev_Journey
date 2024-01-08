import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/interests_people_tab_container_screen/models/interests_people_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InterestsPeopleTabContainerScreen.
///
/// This class manages the state of the InterestsPeopleTabContainerScreen, including the
/// current interestsPeopleTabContainerModelObj
class InterestsPeopleTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<InterestsPeopleTabContainerModel> interestsPeopleTabContainerModelObj =
      InterestsPeopleTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}

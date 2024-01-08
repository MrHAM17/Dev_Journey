import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/top_agents_profile_detail_tab_container_screen/models/top_agents_profile_detail_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the TopAgentsProfileDetailTabContainerScreen.
///
/// This class manages the state of the TopAgentsProfileDetailTabContainerScreen, including the
/// current topAgentsProfileDetailTabContainerModelObj
class TopAgentsProfileDetailTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<TopAgentsProfileDetailTabContainerModel> topAgentsProfileDetailTabContainerModelObj = TopAgentsProfileDetailTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }

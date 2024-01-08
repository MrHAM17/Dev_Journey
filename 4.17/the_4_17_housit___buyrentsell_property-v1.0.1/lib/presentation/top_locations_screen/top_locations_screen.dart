import '../top_locations_screen/widgets/data_item_widget.dart';import 'controller/top_locations_controller.dart';import 'models/data_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_4_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';class TopLocationsScreen extends GetWidget<TopLocationsController> {const TopLocationsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), Text("lbl_top_locations".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildData()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildData() { return Expanded(child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 227.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: controller.topLocationsModelObj.value.dataItemList.value.length, itemBuilder: (context, index) {DataItemModel model = controller.topLocationsModelObj.value.dataItemList.value[index]; return DataItemWidget(model, onTapEstatesCardLocation: () {onTapEstatesCardLocation();});}))); } 
/// Navigates to the topLocationsLocationDetailScreen when the action is triggered.
onTapEstatesCardLocation() { Get.toNamed(AppRoutes.topLocationsLocationDetailScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }

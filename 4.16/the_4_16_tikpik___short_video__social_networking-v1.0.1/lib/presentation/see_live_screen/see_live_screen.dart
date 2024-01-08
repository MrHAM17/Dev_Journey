import '../see_live_screen/widgets/seelive_item_widget.dart';import 'controller/see_live_controller.dart';import 'models/seelive_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/viewers_bottomsheet.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/controller/viewers_controller.dart';class SeeLiveScreen extends GetWidget<SeeLiveController> {const SeeLiveScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: theme.colorScheme.onErrorContainer, image: DecorationImage(image: AssetImage(ImageConstant.imgSeeLive), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 24.v), SizedBox(height: 858.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(height: 200.v, width: double.maxFinite, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [theme.colorScheme.primaryContainer, theme.colorScheme.primaryContainer.withOpacity(0.6)])))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 36.v), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildFollow1(), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Row(children: [_buildWeeklyRanking(), _buildExplore()])), Spacer(), _buildSeeLive()])))]))]))))); } 
/// Section Widget
Widget _buildFollow() { return CustomElevatedButton(height: 32.v, width: 73.h, text: "lbl_follow".tr, margin: EdgeInsets.only(top: 9.v, bottom: 7.v)); } 
/// Section Widget
Widget _buildK() { return CustomElevatedButton(height: 32.v, width: 87.h, text: "lbl_3_6k".tr, margin: EdgeInsets.only(top: 9.v, bottom: 7.v), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, onPressed: () {onTapK();}); } 
/// Section Widget
Widget _buildFollow1() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 48.adaptSize, width: 48.adaptSize), Padding(padding: EdgeInsets.only(top: 6.v, bottom: 3.v), child: Column(children: [Text("lbl_sarah_wilona".tr, style: CustomTextStyles.titleSmallOnErrorContainerBold), SizedBox(height: 6.v), Text("lbl_dancer_singer".tr, style: CustomTextStyles.labelLargeGray300)])), _buildFollow(), _buildK()])), CustomImageView(imagePath: ImageConstant.imgCategoriesXCloseOnerrorcontainer, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 41.h, top: 13.v, bottom: 11.v))]); } 
/// Section Widget
Widget _buildWeeklyRanking() { return CustomElevatedButton(height: 28.v, width: 143.h, text: "lbl_weekly_ranking".tr, leftIcon: Container(margin: EdgeInsets.only(right: 9.h), child: CustomImageView(imagePath: ImageConstant.imgSignal, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: theme.textTheme.labelLarge!, onPressed: () {onTapWeeklyRanking();}); } 
/// Section Widget
Widget _buildExplore() { return CustomElevatedButton(height: 28.v, width: 98.h, text: "lbl_explore".tr, margin: EdgeInsets.only(left: 12.h), leftIcon: Container(margin: EdgeInsets.only(right: 9.h), child: CustomImageView(imagePath: ImageConstant.imgFloatingicon, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: theme.textTheme.labelLarge!); } 
/// Section Widget
Widget _buildSeeLive() { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: controller.seeLiveModelObj.value.seeliveItemList.value.length, itemBuilder: (context, index) {SeeliveItemModel model = controller.seeLiveModelObj.value.seeliveItemList.value[index]; return SeeliveItemWidget(model);}))); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [ViewersBottomsheet] widget.
///
/// The bottom sheet is controlled by the [ViewersController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapK() { Get.bottomSheet(ViewersBottomsheet(Get.put(ViewersController(),),),isScrollControlled: true,); } 
/// Navigates to the weeklyRankingTabContainerScreen when the action is triggered.
onTapWeeklyRanking() { Get.toNamed(AppRoutes.weeklyRankingTabContainerScreen, ); } 
 }

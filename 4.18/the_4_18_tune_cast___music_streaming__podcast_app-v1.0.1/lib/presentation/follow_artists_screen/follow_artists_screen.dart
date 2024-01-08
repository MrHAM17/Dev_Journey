import '../follow_artists_screen/widgets/followartists_item_widget.dart';import 'controller/follow_artists_controller.dart';import 'models/followartists_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';class FollowArtistsScreen extends GetWidget<FollowArtistsController> {const FollowArtistsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("msg_follow_your_favorite".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 32.v), _buildFollowArtists()])), bottomNavigationBar: _buildAutoLayoutVertical())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_follow_artists".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFollowArtists() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.followArtistsModelObj.value.followartistsItemList.value.length, itemBuilder: (context, index) {FollowartistsItemModel model = controller.followArtistsModelObj.value.followartistsItemList.value[index]; return FollowartistsItemWidget(model);})); } 
/// Section Widget
Widget _buildSkip() { return CustomOutlinedButton(width: 180.h, text: "lbl_skip".tr, onPressed: () {onTapSkip();}); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(width: 180.h, text: "lbl_continue".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapContinue();}); } 
/// Section Widget
Widget _buildAutoLayoutVertical() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [_buildSkip(), _buildContinue()])); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }

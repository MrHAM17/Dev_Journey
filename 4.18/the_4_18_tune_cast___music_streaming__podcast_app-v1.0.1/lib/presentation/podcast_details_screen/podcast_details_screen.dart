import '../podcast_details_screen/widgets/podcastdetails_item_widget.dart';import 'controller/podcast_details_controller.dart';import 'models/podcastdetails_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';class PodcastDetailsScreen extends GetWidget<PodcastDetailsController> {const PodcastDetailsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgEllipse250x250, height: 250.adaptSize, width: 250.adaptSize, radius: BorderRadius.circular(125.h)), SizedBox(height: 14.v), Text("lbl_ariana_grande".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 15.v), Text("msg_55_278_829_monthly".tr, style: CustomTextStyles.titleMediumPrimaryMedium_1), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 111.h), child: Row(children: [CustomElevatedButton(height: 45.v, width: 101.h, text: "lbl_follow".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL22, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1, onPressed: () {onTapFollow();}), Spacer(flex: 33), CustomImageView(imagePath: ImageConstant.imgIconsGray90001, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 33), CustomImageView(imagePath: ImageConstant.imgCategoriesShare, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 33), CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))]))), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: GestureDetector(onTap: () {onTapTxtLoremipsumdolor();}, child: Container(width: 366.h, margin: EdgeInsets.only(right: 13.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_lorem_ipsum_dolor2".tr, style: CustomTextStyles.titleMediumPrimaryMedium), TextSpan(text: "lbl_view_more".tr, style: CustomTextStyles.titleMediumOnPrimaryContainerMedium16)]), textAlign: TextAlign.left)))), SizedBox(height: 21.v), Divider(), SizedBox(height: 24.v), _buildAutoLayoutHorizontal(), SizedBox(height: 21.v), _buildPodcastDetails()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_episodes".tr, style: theme.textTheme.headlineSmall)), Padding(padding: EdgeInsets.only(bottom: 10.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16))]); } 
/// Section Widget
Widget _buildPodcastDetails() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.podcastDetailsModelObj.value.podcastdetailsItemList.value.length, itemBuilder: (context, index) {PodcastdetailsItemModel model = controller.podcastDetailsModelObj.value.podcastdetailsItemList.value[index]; return PodcastdetailsItemWidget(model);})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapFollow() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
/// Navigates to the podcastEpisodeDetailsScreen when the action is triggered.
onTapTxtLoremipsumdolor() { Get.toNamed(AppRoutes.podcastEpisodeDetailsScreen, ); } 
 }

import '../posts_camera_screen/widgets/autolayouthorizontal5_item_widget.dart';import 'controller/posts_camera_controller.dart';import 'models/autolayouthorizontal5_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_button.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';class PostsCameraScreen extends GetWidget<PostsCameraController> {const PostsCameraScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: theme.colorScheme.onErrorContainer, image: DecorationImage(image: AssetImage(ImageConstant.imgPostsQuickPhoto), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 32.v), SizedBox(height: 850.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [_buildFive(), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [_buildAppBar(), SizedBox(height: 20.v), CustomImageView(imagePath: ImageConstant.imgCategoriesRepost, height: 36.adaptSize, width: 36.adaptSize, margin: EdgeInsets.only(right: 2.h), onTap: () {onTapImgCategoriesRepost();}), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(right: 10.h), child: Text("lbl_flip".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 22.v), _buildAutoLayoutVertical(categoriesFilter: ImageConstant.imgCategoriesSpeed, filters: "lbl_speed".tr), SizedBox(height: 22.v), _buildAutoLayoutVertical(categoriesFilter: ImageConstant.imgCategoriesFilter, filters: "lbl_filters".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(categoriesFilter: ImageConstant.imgCategoriesBeauty, filters: "lbl_beauty".tr), SizedBox(height: 22.v), _buildAutoLayoutVertical(categoriesFilter: ImageConstant.imgCategoriesTimer, filters: "lbl_timer".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(categoriesFilter: ImageConstant.imgUser, filters: "lbl_reply".tr), SizedBox(height: 22.v), CustomImageView(imagePath: ImageConstant.imgCategoriesFlash, height: 36.adaptSize, width: 36.adaptSize, margin: EdgeInsets.only(right: 2.h)), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(right: 5.h), child: Text("lbl_flash".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 47.v), _buildAutoLayoutHorizontal(), SizedBox(height: 16.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 65.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.symmetric(vertical: 11.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgFrameRed400, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 5.v), Text("lbl_effects".tr, style: theme.textTheme.labelLarge)])), Spacer(flex: 50), CustomIconButton(height: 80.adaptSize, width: 80.adaptSize, padding: EdgeInsets.all(24.h), decoration: IconButtonStyleHelper.gradientDeepOrangeAToOrangeTL40, child: CustomImageView(imagePath: ImageConstant.imgUpload)), Spacer(flex: 49), Padding(padding: EdgeInsets.symmetric(vertical: 11.v), child: Column(children: [CustomIconButton(height: 36.adaptSize, width: 36.adaptSize, padding: EdgeInsets.all(1.h), child: CustomImageView(imagePath: ImageConstant.imgTwitterOnerrorcontainer)), SizedBox(height: 6.v), Text("lbl_upload".tr, style: theme.textTheme.labelLarge)]))])))])))]))]))))); } 
/// Section Widget
Widget _buildFive() { return Align(alignment: Alignment.bottomCenter, child: Container(decoration: AppDecoration.gradientPrimaryContainerToPrimaryContainer, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 138.v), Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Spacer(), Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("lbl_camera".tr, style: CustomTextStyles.titleMediumOnErrorContainer16)), Padding(padding: EdgeInsets.only(left: 20.h, bottom: 7.v), child: Text("lbl_quick".tr, style: CustomTextStyles.titleMediumGray60016)), GestureDetector(onTap: () {onTapTxtTemplates();}, child: Padding(padding: EdgeInsets.only(left: 20.h, bottom: 5.v), child: Text("lbl_templates".tr, style: CustomTextStyles.titleMediumGray60016)))]))]))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 32.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCategoriesXCloseOnerrorcontainer, margin: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 4.v), onTap: () {onTapCategoriesXClose();}), centerTitle: true, title: AppbarTitleButton()); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal() { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 33.h), child: Obx(() => Wrap(runSpacing: 12.v, spacing: 12.h, children: List<Widget>.generate(controller.postsCameraModelObj.value.autolayouthorizontal5ItemList.value.length, (index) {Autolayouthorizontal5ItemModel model = controller.postsCameraModelObj.value.autolayouthorizontal5ItemList.value[index]; return Autolayouthorizontal5ItemWidget(model);}))))); } 
/// Common widget
Widget _buildAutoLayoutVertical({required String categoriesFilter, required String filters, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 26.h), child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: categoriesFilter, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 5.v), Text(filters, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onErrorContainer))])); } 
/// Navigates to the postsTemplatesScreen when the action is triggered.
onTapTxtTemplates() { Get.toNamed(AppRoutes.postsTemplatesScreen, ); } 

/// Navigates to the previous screen.
onTapCategoriesXClose() { Get.back(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onTapImgCategoriesRepost() async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }

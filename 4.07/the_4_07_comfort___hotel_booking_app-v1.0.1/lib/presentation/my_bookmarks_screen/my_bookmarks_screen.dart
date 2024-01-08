import '../my_bookmarks_screen/widgets/mybookmarks_item_widget.dart';import 'controller/my_bookmarks_controller.dart';import 'models/mybookmarks_item_model.dart';import 'package:flutter/material.dart';import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';class MyBookmarksScreen extends GetWidget<MyBookmarksController> {const MyBookmarksScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 24.v), child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildMyBookmarks(), SizedBox(height: 24.v), _buildPresidentMilaDe()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_my_bookmarks".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGridPrimary, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 
/// Section Widget
Widget _buildMyBookmarks() { return Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 281.v, crossAxisCount: 2, mainAxisSpacing: 0.h, crossAxisSpacing: 0.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.myBookmarksModelObj.value.mybookmarksItemList.value.length, itemBuilder: (context, index) {MybookmarksItemModel model = controller.myBookmarksModelObj.value.mybookmarksItemList.value[index]; return MybookmarksItemWidget(model, onTapImgImage: () {onTapImgImage();});})); } 
/// Section Widget
Widget _buildPresidentMilaDe() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 12.h), child: _buildTypeCardThemeDark()), Padding(padding: EdgeInsets.only(left: 12.h), child: _buildTypeCardThemeDark())]); } 
/// Common widget
Widget _buildTypeCardThemeDark() { return Expanded(child: SizedBox(width: double.maxFinite, child: Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 20.v), decoration: AppDecoration.outlineBlackC.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle5, height: 120.v, width: 140.h, radius: BorderRadius.circular(16.h)), SizedBox(height: 18.v), SizedBox(width: 138.h, child: Text("msg_martinez_cannes".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleMedium!.copyWith(height: 1.50))), SizedBox(width: 140.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgSignalYellowA700, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(top: 4.v, bottom: 5.v)), Text("lbl_4_8".tr, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallPrimary), Padding(padding: EdgeInsets.only(top: 3.v, bottom: 4.v), child: Text("lbl_paris_france".tr, style: CustomTextStyles.bodySmall_1))])), SizedBox(height: 2.v), SizedBox(width: 140.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_35".tr, style: CustomTextStyles.titleLargePrimary), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("lbl_night".tr, style: CustomTextStyles.bodySmall10)), CustomImageView(imagePath: ImageConstant.imgBookmarkPrimary, height: 24.adaptSize, width: 24.adaptSize)]))])))); } 
onTapImgImage() {  } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }

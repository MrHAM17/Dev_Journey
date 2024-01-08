import '../friends_screen/widgets/eightythree_item_widget.dart';
import '../friends_screen/widgets/follow_item_widget.dart';
import 'controller/friends_controller.dart';
import 'models/eightythree_item_model.dart';
import 'models/follow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_10_social___social_networking/core/app_export.dart';
import 'package:the_4_10_social___social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_10_social___social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_10_social___social_networking/widgets/custom_outlined_button.dart';
import 'package:the_4_10_social___social_networking/widgets/custom_search_view.dart';

class FriendsScreen extends GetWidget<FriendsController> {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("lbl_friends".tr,
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_search".tr)),
                      SizedBox(height: 25.v),
                      _buildSocials(),
                      SizedBox(height: 27.v),
                      _buildFollow(),
                      SizedBox(height: 16.v),
                      _buildProfileItem()
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPersonAddAlt1,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              onTap: () {
                onTapPersonAddAltOne();
              })
        ]);
  }

  /// Section Widget
  Widget _buildSocials() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_connect_to_your".tr,
              style: CustomTextStyles.titleLargeDeeppurpleA200Bold),
          SizedBox(height: 28.v),
          SizedBox(
              height: 50.v,
              child: Obx(() => ListView.separated(
                  padding: EdgeInsets.only(right: 90.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 30.h);
                  },
                  itemCount: controller
                      .friendsModelObj.value.eightythreeItemList.value.length,
                  itemBuilder: (context, index) {
                    EightythreeItemModel model = controller
                        .friendsModelObj.value.eightythreeItemList.value[index];
                    return EightythreeItemWidget(model);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildFollow() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_recommeded".tr,
              style: CustomTextStyles.titleLargeDeeppurpleA200Bold)),
      SizedBox(height: 22.v),
      Obx(() => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0.v),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                        height: 2.v,
                        thickness: 2.v,
                        color: theme.colorScheme.secondaryContainer)));
          },
          itemCount:
              controller.friendsModelObj.value.followItemList.value.length,
          itemBuilder: (context, index) {
            FollowItemModel model =
                controller.friendsModelObj.value.followItemList.value[index];
            return FollowItemWidget(model);
          }))
    ]);
  }

  /// Section Widget
  Widget _buildProfileItem() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse11,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_rosalia".tr, style: theme.textTheme.titleLarge),
                    SizedBox(height: 4.v),
                    Text("msg_your_e_friends_on".tr,
                        style: CustomTextStyles.bodyMediumBluegray700)
                  ])),
          Spacer(),
          CustomOutlinedButton(
              width: 76.h,
              text: "lbl_follow".tr,
              margin: EdgeInsets.only(top: 9.v, bottom: 8.v),
              buttonTextStyle: CustomTextStyles.titleSmallSemiBold)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapPersonAddAltOne() async {
    var url = 'https://accounts.google.com/';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}

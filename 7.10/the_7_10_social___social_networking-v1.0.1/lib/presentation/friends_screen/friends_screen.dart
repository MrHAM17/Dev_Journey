import '../friends_screen/widgets/eightythree_item_widget.dart';
import '../friends_screen/widgets/follow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_10_social___social_networking/core/app_export.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_10_social___social_networking/widgets/custom_outlined_button.dart';
import 'package:the_7_10_social___social_networking/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class FriendsScreen extends StatelessWidget {
  FriendsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("Friends",
                                  style: theme.textTheme.headlineLarge))),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomSearchView(
                              controller: searchController,
                              hintText: "Search")),
                      SizedBox(height: 25.v),
                      _buildSocials(context),
                      SizedBox(height: 27.v),
                      _buildFollow(context),
                      SizedBox(height: 16.v),
                      _buildProfileItem(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPersonAddAlt1,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              onTap: () {
                onTapPersonAddAltOne(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildSocials(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Connect to Your Friends",
              style: CustomTextStyles.titleLargeDeeppurpleA200Bold),
          SizedBox(height: 28.v),
          SizedBox(
              height: 50.v,
              child: ListView.separated(
                  padding: EdgeInsets.only(right: 90.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 30.h);
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return EightythreeItemWidget();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFollow(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("Recommeded",
              style: CustomTextStyles.titleLargeDeeppurpleA200Bold)),
      SizedBox(height: 22.v),
      ListView.separated(
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
          itemCount: 6,
          itemBuilder: (context, index) {
            return FollowItemWidget();
          })
    ]);
  }

  /// Section Widget
  Widget _buildProfileItem(BuildContext context) {
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
                    Text("Rosalia", style: theme.textTheme.titleLarge),
                    SizedBox(height: 4.v),
                    Text("Your’e friends on twitter",
                        style: CustomTextStyles.bodyMediumBluegray700)
                  ])),
          Spacer(),
          CustomOutlinedButton(
              width: 76.h,
              text: "Follow",
              margin: EdgeInsets.only(top: 9.v, bottom: 8.v),
              buttonTextStyle: CustomTextStyles.titleSmallSemiBold)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    Navigator.pop(context);
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapPersonAddAltOne(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}

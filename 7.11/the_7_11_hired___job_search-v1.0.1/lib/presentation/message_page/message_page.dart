import '../message_page/widgets/message_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_11_hired___job_search/core/app_export.dart';
import 'package:the_7_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_7_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_7_11_hired___job_search/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  SizedBox(height: 4.v),
                  CustomSearchView(
                      controller: searchController, hintText: "Search Message"),
                  SizedBox(height: 24.v),
                  _buildDot(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAvatar(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildMessage(context),
                  Spacer(),
                  CustomElevatedButton(
                      height: 46.v,
                      width: 137.h,
                      text: "New Chat",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgPlusOnprimarycontainer,
                              height: 18.adaptSize,
                              width: 18.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
                      alignment: Alignment.centerRight)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Message"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildDot(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapDot(context);
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 56.adaptSize,
              width: 56.adaptSize,
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage56x56,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(28.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.green600,
                            borderRadius: BorderRadius.circular(8.h),
                            border: Border.all(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                width: 1.h))))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 3.v),
              child: _buildNameDescription(context,
                  wadeWarren: "Esther Howard",
                  loremIpsumDolor: "Lorem ipsum dolor sit amet...")),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: _buildTime(context, time: "10:20", widget: "2"))
        ]));
  }

  /// Section Widget
  Widget _buildAvatar(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapAvatar(context);
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(28.h)),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 3.v),
              child: _buildNameDescription(context,
                  wadeWarren: "Wade Warren",
                  loremIpsumDolor: "Lorem ipsum dolor sit amet...")),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: _buildTime(context, time: "10:20", widget: "2"))
        ]));
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.5.v),
              child: SizedBox(
                  width: 327.h,
                  child: Divider(
                      height: 1.v, thickness: 1.v, color: appTheme.gray300)));
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return MessageItemWidget();
        });
  }

  /// Common widget
  Widget _buildNameDescription(
    BuildContext context, {
    required String wadeWarren,
    required String loremIpsumDolor,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(wadeWarren,
          style: CustomTextStyles.titleMediumBold
              .copyWith(color: theme.colorScheme.primary)),
      SizedBox(height: 9.v),
      Text(loremIpsumDolor,
          style: CustomTextStyles.titleSmallBluegray400
              .copyWith(color: appTheme.blueGray400))
    ]);
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String time,
    required String widget,
  }) {
    return Column(children: [
      Text(time,
          style: CustomTextStyles.labelLargeSemiBold
              .copyWith(color: appTheme.blueGray400)),
      SizedBox(height: 6.v),
      Align(
          alignment: Alignment.centerRight,
          child: Container(
              width: 24.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
              child: Text(widget,
                  style: theme.textTheme.labelMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapDot(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapAvatar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}

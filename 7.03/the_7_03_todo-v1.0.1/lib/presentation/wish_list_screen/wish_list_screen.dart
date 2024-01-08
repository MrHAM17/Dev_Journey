import 'package:flutter/material.dart';
import 'package:the_7_03_todo/core/app_export.dart';
import 'package:the_7_03_todo/widgets/custom_elevated_button.dart';
import 'package:the_7_03_todo/widgets/custom_icon_button.dart';
import 'package:the_7_03_todo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WishListScreen extends StatelessWidget {
  WishListScreen({Key? key}) : super(key: key);

  TextEditingController filesizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)),
                  SizedBox(height: 75.v),
                  _buildPageHeader(context),
                  SizedBox(height: 85.v),
                  _buildDate(context,
                      date: "Task todo",
                      calendar: ImageConstant.imgCalendarOnprimarycontainer,
                      ttMmYy: "Create Action Mobile"),
                  SizedBox(height: 18.v),
                  _buildDate(context,
                      date: "Date",
                      calendar: ImageConstant.imgCalendar,
                      ttMmYy: "tt/mm/yy"),
                  SizedBox(height: 18.v),
                  _buildAttachments(context),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      text: "Make a wish list",
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      onPressed: () {
                        onTapMakeAWishList(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Make a wish list", style: theme.textTheme.headlineMedium),
      SizedBox(height: 11.v),
      Text("Make your job easier with our reminders",
          style: theme.textTheme.labelLarge)
    ]);
  }

  /// Section Widget
  Widget _buildAttachments(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Attachments", style: CustomTextStyles.labelLargeOnPrimary_1),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: filesizeController,
          hintText: "maximum 10 mb",
          hintStyle: CustomTextStyles.titleSmallOnPrimary,
          textInputAction: TextInputAction.done,
          prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 23.v,
                  width: 24.h)),
          prefixConstraints: BoxConstraints(maxHeight: 58.v),
          contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL14)
    ]);
  }

  /// Common widget
  Widget _buildDate(
    BuildContext context, {
    required String date,
    required String calendar,
    required String ttMmYy,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(date,
          style: CustomTextStyles.labelLargeOnPrimary_1
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.6))),
      SizedBox(height: 12.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
          decoration: AppDecoration.outlineOnPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
          child: Row(children: [
            CustomImageView(imagePath: calendar, height: 23.v, width: 24.h),
            Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(ttMmYy,
                    style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                        color: theme.colorScheme.onPrimary.withOpacity(0.6))))
          ]))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapMakeAWishList(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}

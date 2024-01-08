import 'package:flutter/material.dart';
import 'package:the_7_03_todo/core/app_export.dart';
import 'package:the_7_03_todo/widgets/custom_elevated_button.dart';
import 'package:the_7_03_todo/widgets/custom_icon_button.dart';

class WorkTodayScreen extends StatelessWidget {
  const WorkTodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftBlack900)),
                  SizedBox(height: 79.v),
                  _buildPageHeader(context),
                  SizedBox(height: 78.v),
                  _buildDate(context),
                  SizedBox(height: 59.v),
                  _buildTodoWorkItem(context),
                  _buildTodoWorkItem1(context),
                  SizedBox(height: 96.v),
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
      Text("Work Today’s", style: theme.textTheme.headlineMedium),
      SizedBox(height: 7.v),
      Text("Make your job easier with our reminders",
          style: theme.textTheme.labelLarge)
    ]);
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 6.v, bottom: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Today", style: CustomTextStyles.titleSmallBlack900),
            SizedBox(height: 5.v),
            Text("02 April 2021", style: CustomTextStyles.titleMediumBlack900)
          ])),
      CustomIconButton(
          height: 58.v,
          width: 60.h,
          padding: EdgeInsets.all(17.h),
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(imagePath: ImageConstant.imgCalendar))
    ]);
  }

  /// Section Widget
  Widget _buildTodoWorkItem(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 15.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 26.v,
              width: 28.h,
              decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6.h))),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 2.v),
              child:
                  Text("Research Product", style: theme.textTheme.bodyMedium)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowIcon,
              height: 5.v,
              width: 3.h,
              margin: EdgeInsets.symmetric(vertical: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildTodoWorkItem1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 15.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 26.v,
              width: 28.h,
              decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6.h))),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 2.v),
              child: Text("Create Action Plan",
                  style: theme.textTheme.bodyMedium)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowIcon,
              height: 5.v,
              width: 3.h,
              margin: EdgeInsets.symmetric(vertical: 10.v))
        ]));
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

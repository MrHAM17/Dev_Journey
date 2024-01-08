import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  SizedBox(
                      height: 92.v,
                      width: 80.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse314,
                                          height: 70.adaptSize,
                                          width: 70.adaptSize,
                                          radius: BorderRadius.circular(35.h),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 80.adaptSize,
                                              width: 80.adaptSize,
                                              child: CircularProgressIndicator(
                                                  value: 0.5)))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgClosePrimary,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            alignment: Alignment.bottomCenter)
                      ])),
                  SizedBox(height: 7.v),
                  Text("Alex Dordan", style: CustomTextStyles.titleMedium18),
                  SizedBox(height: 1.v),
                  Text("Web Developer", style: theme.textTheme.labelMedium),
                  SizedBox(height: 9.v),
                  _buildFrame(context,
                      checkmark: ImageConstant.imgSettings40x40,
                      referFriends: "Change Password"),
                  SizedBox(height: 20.v),
                  _buildFrame2(context),
                  SizedBox(height: 20.v),
                  _buildFrame(context,
                      checkmark: ImageConstant.imgCheckmarkIndigo5040x40,
                      referFriends: "Invite Friends & Business"),
                  SizedBox(height: 20.v),
                  _buildFrame(context,
                      checkmark: ImageConstant.imgUserIndigo5040x40,
                      referFriends: "Privacy & Policy"),
                  SizedBox(height: 20.v),
                  Divider(color: appTheme.gray200),
                  SizedBox(height: 19.v),
                  _buildFrame(context,
                      checkmark: ImageConstant.imgIcon, referFriends: "FAQs"),
                  SizedBox(height: 20.v),
                  _buildFrame(context,
                      checkmark: ImageConstant.imgFloatingIcon1,
                      referFriends: "Terms & Conditions"),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Settings"),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgContrastGray300,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgProfile,
          height: 40.adaptSize,
          width: 40.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 8.v),
          child: Text("Notification", style: theme.textTheme.titleMedium)),
      Spacer(),
      CustomSwitch(
          margin: EdgeInsets.symmetric(vertical: 13.v),
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          })
    ]);
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String checkmark,
    required String referFriends,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: checkmark, height: 40.adaptSize, width: 40.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 8.v),
          child: Text(referFriends,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.black900))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 8.v,
          width: 4.h,
          margin: EdgeInsets.symmetric(vertical: 16.v))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

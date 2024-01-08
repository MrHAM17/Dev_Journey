import 'package:flutter/material.dart';
import 'package:the_7_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';
import 'package:the_7_15_safebank___mobile_banking_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
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
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 18.v, bottom: 18.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Alex Dordan",
                                          style:
                                              CustomTextStyles.titleMedium18),
                                      SizedBox(height: 1.v),
                                      Text("Web Developer",
                                          style: theme.textTheme.labelMedium)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 26.h, top: 25.v, bottom: 25.v),
                                child: CustomIconButton(
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCloseIndigo50)))
                          ])),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildNinetyFour(context,
                          floatingIcon: ImageConstant.imgFacebookIndigo50,
                          personalInfo: "Settings", onTapNinetyFour: () {
                        onTapNinetyFive(context);
                      })),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildNinetyFour(context,
                          floatingIcon: ImageConstant.imgFloatingIconIndigo50,
                          personalInfo: "Personal Info")),
                  SizedBox(height: 20.v),
                  _buildProfile(context),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildNinetyFour(context,
                          floatingIcon:
                              ImageConstant.imgFloatingIconIndigo5040x40,
                          personalInfo: "Billing Details")),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildNinetyFour(context,
                          floatingIcon: ImageConstant.imgFloatingIcon40x40,
                          personalInfo: "Transfer Funds")),
                  SizedBox(height: 20.v),
                  Divider(color: appTheme.gray200),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildNinetyFour(context,
                          floatingIcon: ImageConstant.imgSettingsIndigo50,
                          personalInfo: "Privacy Settings")),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildNinetyFour(context,
                          floatingIcon: ImageConstant.imgSettingsIndigo5040x40,
                          personalInfo: "Community")),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                      text: "Log Out",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 15.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 15.adaptSize,
                              width: 15.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL7)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        centerTitle: true,
        title: AppbarSubtitle(text: "Profile"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUSetting,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v))
        ]);
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
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
  Widget _buildNinetyFour(
    BuildContext context, {
    required String floatingIcon,
    required String personalInfo,
    Function? onTapNinetyFour,
  }) {
    return GestureDetector(
        onTap: () {
          onTapNinetyFour!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: floatingIcon,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 8.v),
              child: Text(personalInfo,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.black900))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 8.v,
              width: 4.h,
              margin: EdgeInsets.symmetric(vertical: 16.v))
        ]));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapNinetyFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}

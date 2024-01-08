import 'models/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/custom_switch.dart';
import 'provider/setting_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingProvider(), child: SettingScreen());
  }
}

class SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(children: [
                  _buildFrame(context),
                  SizedBox(height: 16.v),
                  _buildFrame1(context),
                  SizedBox(height: 16.v),
                  _buildFrame2(context),
                  SizedBox(height: 16.v),
                  _buildFrame3(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_setting".tr));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrame(context);
        },
        child: Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.cardBg
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGlobe,
                  height: 40.adaptSize,
                  width: 40.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_language".tr,
                            style: theme.textTheme.labelLarge),
                        SizedBox(height: 3.v),
                        Text("lbl_english".tr,
                            style: CustomTextStyles.labelMediumWhiteA700)
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.cardBg
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame427319100,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 10.v, bottom: 11.v),
              child: Text("lbl_notifiction".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Selector<SettingProvider, bool?>(
              selector: (context, provider) => provider.isSelectedSwitch,
              builder: (context, isSelectedSwitch, child) {
                return CustomSwitch(
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context.read<SettingProvider>().changeSwitchBox1(value);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.cardBg
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray800,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 9.v),
              child: Text("msg_download_in_high".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Selector<SettingProvider, bool?>(
              selector: (context, provider) => provider.isSelectedSwitch1,
              builder: (context, isSelectedSwitch1, child) {
                return CustomSwitch(
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      context.read<SettingProvider>().changeSwitchBox2(value);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.cardBg
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 9.v),
              child: Text("msg_download_using_only".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Selector<SettingProvider, bool?>(
              selector: (context, provider) => provider.isSelectedSwitch2,
              builder: (context, isSelectedSwitch2, child) {
                return CustomSwitch(
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context.read<SettingProvider>().changeSwitchBox3(value);
                    });
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }
}

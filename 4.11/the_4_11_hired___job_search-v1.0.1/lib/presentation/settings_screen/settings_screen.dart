import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/home_page/home_page.dart';
import 'package:the_4_11_hired___job_search/presentation/message_page/message_page.dart';
import 'package:the_4_11_hired___job_search/presentation/profile_page/profile_page.dart';
import 'package:the_4_11_hired___job_search/presentation/saved_page/saved_page.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_bottom_bar.dart';
import 'package:the_4_11_hired___job_search/presentation/logout_popup_dialog/logout_popup_dialog.dart';
import 'package:the_4_11_hired___job_search/presentation/logout_popup_dialog/controller/logout_popup_controller.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildBannerProgress(),
                                SizedBox(height: 32.v),
                                _buildAccount1(),
                                SizedBox(height: 26.v),
                                _buildGeneral(),
                                SizedBox(height: 26.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_about".tr,
                                        style: CustomTextStyles
                                            .labelLargeSemiBold)),
                                SizedBox(height: 16.v),
                                _buildPrivacy(
                                    thumbsUp: ImageConstant.imgShield,
                                    experience: "msg_legal_and_policies".tr,
                                    onTapPrivacy: () {
                                      onTapLegalAndPolicies();
                                    }),
                                SizedBox(height: 15.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(indent: 36.h)),
                                SizedBox(height: 16.v),
                                _buildPrivacy(
                                    thumbsUp: ImageConstant.imgProfile,
                                    experience: "lbl_help_feedback".tr),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Divider(indent: 36.h)),
                                SizedBox(height: 16.v),
                                _buildPrivacy(
                                    thumbsUp: ImageConstant.imgVideoCamera,
                                    experience: "lbl_about_us".tr),
                                SizedBox(height: 28.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLargeLabelMedium();
                                    },
                                    child: Text("lbl_logout".tr,
                                        style: CustomTextStyles
                                            .titleMediumOnPrimary))
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapImage();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_settings".tr));
  }

  /// Section Widget
  Widget _buildBannerProgress() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(children: [
          Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              margin: EdgeInsets.only(top: 5.v, bottom: 4.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        child: CircularProgressIndicator(
                            value: 0.5, strokeWidth: 4.h))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_65".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_profile_completeness".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer),
                    SizedBox(height: 4.v),
                    Opacity(
                        opacity: 0.8,
                        child: SizedBox(
                            width: 185.h,
                            child: Text("msg_quality_profiles".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .labelLargeOnPrimaryContainer_2
                                    .copyWith(height: 1.67))))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAccount1() {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_account".tr,
              style: CustomTextStyles.labelLargeSemiBold)),
      SizedBox(height: 15.v),
      _buildPrivacy(
          thumbsUp: ImageConstant.imgPerson,
          experience: "lbl_personal_info".tr,
          onTapPrivacy: () {
            onTapAccount();
          }),
      SizedBox(height: 16.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h)),
      SizedBox(height: 15.v),
      _buildPrivacy(
          thumbsUp: ImageConstant.imgThumbsUpPrimary,
          experience: "lbl_experience".tr,
          onTapPrivacy: () {
            onTapPrivacy();
          }),
      SizedBox(height: 14.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h))
    ]);
  }

  /// Section Widget
  Widget _buildGeneral() {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_general".tr,
              style: CustomTextStyles.labelLargeSemiBold)),
      SizedBox(height: 15.v),
      _buildPrivacy(
          thumbsUp: ImageConstant.imgBell,
          experience: "lbl_notification".tr,
          onTapPrivacy: () {
            onTapNotification();
          }),
      SizedBox(height: 16.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h)),
      SizedBox(height: 15.v),
      _buildPrivacy(
          thumbsUp: ImageConstant.imgGlobe,
          experience: "lbl_language".tr,
          onTapPrivacy: () {
            onTapLanguage();
          }),
      SizedBox(height: 14.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h)),
      SizedBox(height: 15.v),
      _buildPrivacy(
          thumbsUp: ImageConstant.imgShieldDone, experience: "lbl_security".tr),
      SizedBox(height: 14.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildPrivacy({
    required String thumbsUp,
    required String experience,
    Function? onTapPrivacy,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPrivacy!.call();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: thumbsUp,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 7.v),
                  child: Text(experience,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.colorScheme.primary))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v))
            ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImage() {
    Get.back();
  }

  /// Navigates to the personalInfoScreen when the action is triggered.
  onTapAccount() {
    Get.toNamed(
      AppRoutes.personalInfoScreen,
    );
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  onTapPrivacy() {
    Get.toNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapLanguage() {
    Get.toNamed(
      AppRoutes.languageScreen,
    );
  }

  /// Navigates to the privacyScreen when the action is triggered.
  onTapLegalAndPolicies() {
    Get.toNamed(
      AppRoutes.privacyScreen,
    );
  }

  /// Displays a dialog with the [LogoutPopupDialog] content.
  onTapTxtLargeLabelMedium() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: LogoutPopupDialog(
        Get.put(
          LogoutPopupController(),
        ),
      ),
    ));
  }
}

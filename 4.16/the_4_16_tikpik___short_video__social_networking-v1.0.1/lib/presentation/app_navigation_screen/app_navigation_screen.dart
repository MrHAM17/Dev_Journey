import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "walkthrough One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walkthroughOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "walkthrough Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walkthroughTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "walkthrough Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.walkthroughThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lets in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.letsInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign up blank form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBlankFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in blank form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInBlankFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "choose your interest".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourInterestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "tell us about yourself".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.tellUsAboutYourselfScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "when is your birthday".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whenIsYourBirthdayScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "fill your profile blank form".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.fillYourProfileBlankFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "create new PIN - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPinTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "set your fingerprint".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.setYourFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "forgot password methods".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordMethodsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "forgot password type OTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "forgot password filled OTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFilledOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "create new password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sound used".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.soundUsedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "profile - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "followers - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.followersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "send message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sendMessageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "search type keyword".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchTypeKeywordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "search results users - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultsUsersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "see live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.seeLiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "weekly ranking - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.weeklyRankingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "trending sounds details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingSoundsDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "trending hashtag details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingHashtagDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts quick photo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postsQuickPhotoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts quick video".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postsQuickVideoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts camera".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postsCameraScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts templates".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postsTemplatesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts add sounds - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.postsAddSoundsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts add effects - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.postsAddEffectsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts upload media - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.postsUploadMediaTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "posts edit page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postsEditPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "go live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.goLiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "all activity dropdown".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.allActivityDropdownScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "messages".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messagesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "messages box".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messagesBoxScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "type message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.typeMessageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "call".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.callScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "find friends".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.findFriendsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "edit profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "manage accounts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.manageAccountsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "privacy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "qr code".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.qrCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "privacy policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home swipe up instructions".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeSwipeUpInstructionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "add option".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addOptionScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}

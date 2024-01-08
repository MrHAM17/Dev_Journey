import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
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
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "walkthrough One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walkthroughOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "walkthrough Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walkthroughTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "walkthrough Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walkthroughThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "lets in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.letsInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up blank form",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpBlankFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in blank form",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInBlankFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "choose your interest",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chooseYourInterestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "tell us about yourself",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tellUsAboutYourselfScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "when is your birthday",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whenIsYourBirthdayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "fill your profile blank form",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.fillYourProfileBlankFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "create new PIN - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.createNewPinTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "set your fingerprint",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setYourFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password methods",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordMethodsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password type OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password filled OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordFilledOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "create new password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "report",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sound used",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.soundUsedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "followers - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.followersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "send message",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMessageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search type keyword",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchTypeKeywordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search results users - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.searchResultsUsersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "see live",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seeLiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "weekly ranking - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.weeklyRankingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "trending sounds details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trendingSoundsDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "trending hashtag details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trendingHashtagDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts quick photo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postsQuickPhotoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts quick video",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postsQuickVideoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts camera",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postsCameraScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts templates",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postsTemplatesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts add sounds - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.postsAddSoundsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts add effects - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.postsAddEffectsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts upload media - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.postsUploadMediaTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "posts edit page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postsEditPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "go live",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.goLiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "all activity dropdown",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allActivityDropdownScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "messages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "messages box",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesBoxScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "type message",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeMessageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "call",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.callScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "find friends",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.findFriendsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "manage accounts",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.manageAccountsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "privacy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "security",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "qr code",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.qrCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "privacy policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home swipe up instructions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeSwipeUpInstructionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add option",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addOptionScreen),
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
  Widget _buildAppNavigation(BuildContext context) {
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
                "App Navigation",
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
                "Check your app's UI from the below demo screens of your app.",
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
  Widget _buildScreenTitle(
    BuildContext context, {
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
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

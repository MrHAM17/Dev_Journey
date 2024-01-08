import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
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
                              screenTitle: "splash screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "walkthrough One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.walkthroughOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "walkthrough Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.walkthroughTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "walkthrough Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.walkthroughThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lets in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.letsInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up blank form".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signUpBlankFormScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign in blank form".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signInBlankFormScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose your interest".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseYourInterestScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "tell us about yourself".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.tellUsAboutYourselfScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "when is your birthday".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whenIsYourBirthdayScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "fill your profile blank form".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.fillYourProfileBlankFormScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new PIN - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPinTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "set your fingerprint".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setYourFingerprintScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forgot password methods".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordMethodsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forgot password type OTP".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordTypeOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forgot password filled OTP".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordFilledOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "report".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reportScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sound used".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.soundUsedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "followers - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.followersTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "send message".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.sendMessageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search type keyword".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchTypeKeywordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "search results users - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .searchResultsUsersTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "see live".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seeLiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "weekly ranking - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.weeklyRankingTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "trending sounds details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.trendingSoundsDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "trending hashtag details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.trendingHashtagDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "posts quick photo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsQuickPhotoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "posts quick video".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsQuickVideoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "posts camera".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.postsCameraScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "posts templates".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsTemplatesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "posts add sounds - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsAddSoundsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "posts add effects - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsAddEffectsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "posts upload media - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsUploadMediaTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "posts edit page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.postsEditPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "go live".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.goLiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "all activity dropdown".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.allActivityDropdownScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "messages".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messagesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "messages box".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messagesBoxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "type message".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.typeMessageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "call".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.callScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "find friends".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.findFriendsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "edit profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "manage accounts".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.manageAccountsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "privacy".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.privacyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "security".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.securityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "qr code".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.qrCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "language".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.languageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "privacy policy".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.privacyPolicyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "home swipe up instructions".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeSwipeUpInstructionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
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
      },
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
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}

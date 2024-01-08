import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

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
              width: double.maxFinite,
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
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP Verification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpVerificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Password - Success ".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordSuccessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Category Comedy".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoryComedyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Episode - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.episodeTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Choose Plan".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.choosePlanScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Home Recently Watched - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeRecentlyWatchedContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Not Found".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.notFoundScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Select Saved".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.selectSavedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Saved empty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.savedEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.historyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "No History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.noHistoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Setting".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Language".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.languageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.helpScreen),
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

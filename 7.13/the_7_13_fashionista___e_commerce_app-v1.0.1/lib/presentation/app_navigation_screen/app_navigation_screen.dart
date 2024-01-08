import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';

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
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onbording One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onbordingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onbording Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onbordingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onbording Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onbordingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Sign In",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpSignInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Information",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.informationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification Code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Explore Shop",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.exploreShopScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Popular Items",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.popularItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product View",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Complete",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.completeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tracking Order",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trackingOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order Status",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orderStatusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reviews - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Write a review",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.writeAReviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Discount Items",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.discountItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Social Account Link",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.socialAccountLinkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
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

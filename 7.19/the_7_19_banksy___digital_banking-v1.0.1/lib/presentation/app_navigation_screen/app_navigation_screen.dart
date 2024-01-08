import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';

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
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Card Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cardDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send Money",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMoneyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter Money",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterMoneyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send Money - Enter Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMoneyEnterPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Person",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addPersonScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add card#One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addCardOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Receive Money Request - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.receiveMoneyRequestTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Request sent",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestSentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Money Exchange",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moneyExchangeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pay Bill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.payBillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Electric Bill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.electricBillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bil Payment Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bilPaymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bank To bank#One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bankToBankOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bank To bank#Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bankToBankTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bank To bank#Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bankToBankThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Money Sent Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.moneySentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Prepaid#One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobilePrepaidOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Prepaid#Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobilePrepaidTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Prepaid#Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobilePrepaidThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recharge Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.rechargeSuccessScreen),
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

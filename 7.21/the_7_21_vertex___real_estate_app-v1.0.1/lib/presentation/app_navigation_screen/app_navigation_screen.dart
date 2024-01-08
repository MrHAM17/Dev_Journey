import 'package:flutter/material.dart';
import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';

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
                          screenTitle: "Sign in ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Alarm - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeAlarmContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification_Empty States",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationEmptyStatesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message_Chat",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Home_Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myHomeEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewPropertyAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Meet with a Agent",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.addNewPropertyMeetWithAAgentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Time to sell",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.addNewPropertyTimeToSellScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Reason selling home",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.addNewPropertyReasonSellingHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Decsription",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.addNewPropertyDecsriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Home facts",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewPropertyHomeFactsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Contact",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewPropertyContactScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Select Amenities",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.addNewPropertySelectAmenitiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Property_Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewPropertyDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Listing",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeListingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Listing_Satelite",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeListingSateliteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home_Listing_Draw",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeListingDrawScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pick Date",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pickDateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify Phone Number",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select virtual app",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectVirtualAppScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select App_Alarm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectAppAlarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm request ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmRequestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FAQs_Get help",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.faqsGetHelpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Past Tours",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pastToursScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recently Views",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recentlyViewsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favorite ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.favoriteScreen),
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

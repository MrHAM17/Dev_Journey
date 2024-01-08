import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';

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
                          screenTitle: "Product Tour - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productTourOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Tour - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productTourTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Tour - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productTourThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Featured Estates",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.featuredEstatesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Real Estates List by Category",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.realEstatesListByCategoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Top Locations",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topLocationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Top Locations - Location Detail",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.topLocationsLocationDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Top Agents ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topAgentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              " Top Agents - Profile Detail - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .topAgentsProfileDetailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Review - Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Review - Fill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewFillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Summary ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.summaryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Form Detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Photos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addPhotosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Extra Information",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.extraInformationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Form - Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification List - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.notificationListTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Call",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.callScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favourite Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.favouriteEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Horizontal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.horizontalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register Form - Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerFormEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Form - OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Empty map",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emptyMapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " All Reviews - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allReviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Empty search",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emptySearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Result",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Choose Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filterChooseLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Result - Filter",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resultFilterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location - Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location - Choose Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationChooseLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location - Fill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationFillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Preferable ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.preferableScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Preferable - Selected",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.preferableSelectedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment - Empty - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.paymentEmptyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " History Detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historyDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Add Review - Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addReviewEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Add Review - Fill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addReviewFillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "User - Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.userEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Form",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Property Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.propertyDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "360 View",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.viewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View on Map",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewOnMapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reviews - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reviews - Gallery",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewsGalleryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Promotion",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.promotionScreen),
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

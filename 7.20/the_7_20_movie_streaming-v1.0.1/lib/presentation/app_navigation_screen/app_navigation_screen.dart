import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

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
                          screenTitle: "login ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "See More Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seeMoreFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "See More Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seeMoreSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "See More Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seeMoreSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Page Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPageSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Page Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPageNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Page Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPageTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Page Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPageElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Page Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPageTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Page Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPageEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Explore Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.exploreSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Explore Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.exploreSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Explore Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.exploreTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Explore Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.exploreNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Channel Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.channelFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Channel Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.channelFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchNineScreen),
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

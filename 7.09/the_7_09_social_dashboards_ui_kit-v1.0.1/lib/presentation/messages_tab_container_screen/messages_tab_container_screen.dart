import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/presentation/home_page/home_page.dart';
import 'package:the_7_09_social_dashboards_ui_kit/presentation/messages_page/messages_page.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_bottom_bar.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_icon_button.dart';

class MessagesTabContainerScreen extends StatefulWidget {
  const MessagesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MessagesTabContainerScreenState createState() =>
      MessagesTabContainerScreenState();
}

class MessagesTabContainerScreenState extends State<MessagesTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNavigationHeader01(context),
              Column(
                children: [
                  SizedBox(height: 37.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 514.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        MessagesPage(),
                        MessagesPage(),
                        MessagesPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationHeader01(BuildContext context) {
    return Container(
      height: 68.v,
      width: double.maxFinite,
      decoration: AppDecoration.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 28.h,
                vertical: 15.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRewindPrimarycontainer38x38,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "Message",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  CustomIconButton(
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconNotification,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 38.v,
            leadingWidth: 66.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgRewind38x38,
              margin: EdgeInsets.only(left: 28.h),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Messages",
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgComputerWhiteA700,
                margin: EdgeInsets.symmetric(horizontal: 28.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 25.v,
      width: 308.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: theme.colorScheme.onPrimary,
        tabs: [
          Tab(
            child: Text(
              "Direct Messages",
            ),
          ),
          Tab(
            child: Text(
              "Group Chat",
            ),
          ),
          Tab(
            child: Text(
              "Archived",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}

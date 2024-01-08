import 'models/archived_message_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/archived_message_page/archived_message_page.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/home_page/home_page.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/custom_bottom_bar.dart';
import 'provider/archived_message_tab_container_provider.dart';

class ArchivedMessageTabContainerScreen extends StatefulWidget {
  const ArchivedMessageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ArchivedMessageTabContainerScreenState createState() =>
      ArchivedMessageTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ArchivedMessageTabContainerProvider(),
      child: ArchivedMessageTabContainerScreen(),
    );
  }
}

class ArchivedMessageTabContainerScreenState
    extends State<ArchivedMessageTabContainerScreen>
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
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildTabview(context),
              SizedBox(
                height: 518.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    ArchivedMessagePage(),
                    ArchivedMessagePage(),
                    ArchivedMessagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 68.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRewindPrimarycontainer38x38,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 15.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_home".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 15.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
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
              "lbl_direct_messages".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group_chat".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_archived".tr,
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
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}

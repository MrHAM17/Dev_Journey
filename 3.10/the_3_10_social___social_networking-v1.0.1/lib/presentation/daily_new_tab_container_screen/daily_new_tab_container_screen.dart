import 'bloc/daily_new_tab_container_bloc.dart';
import 'models/daily_new_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_10_social___social_networking/core/app_export.dart';
import 'package:the_3_10_social___social_networking/presentation/daily_new_page/daily_new_page.dart';
import 'package:the_3_10_social___social_networking/presentation/discover_page/discover_page.dart';
import 'package:the_3_10_social___social_networking/presentation/messages_page/messages_page.dart';
import 'package:the_3_10_social___social_networking/presentation/notifications_page/notifications_page.dart';
import 'package:the_3_10_social___social_networking/presentation/profile_page/profile_page.dart';
import 'package:the_3_10_social___social_networking/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_3_10_social___social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_10_social___social_networking/widgets/custom_bottom_bar.dart';

class DailyNewTabContainerScreen extends StatefulWidget {
  const DailyNewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DailyNewTabContainerScreenState createState() =>
      DailyNewTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DailyNewTabContainerBloc>(
      create: (context) => DailyNewTabContainerBloc(DailyNewTabContainerState(
        dailyNewTabContainerModelObj: DailyNewTabContainerModel(),
      ))
        ..add(DailyNewTabContainerInitialEvent()),
      child: DailyNewTabContainerScreen(),
    );
  }
}

class DailyNewTabContainerScreenState extends State<DailyNewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29.v),
              _buildTabview(context),
              SizedBox(
                height: 662.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    DailyNewPage(),
                    DailyNewPage(),
                    DiscoverPage(),
                    DailyNewPage(),
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
      title: BlocSelector<DailyNewTabContainerBloc, DailyNewTabContainerState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay40x40,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
      width: 410.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepPurpleA200,
        unselectedLabelColor: appTheme.indigo100,
        tabs: [
          Tab(
            child: Text(
              "lbl_trending".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_latest".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_discover".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_daily_new".tr,
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
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
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
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
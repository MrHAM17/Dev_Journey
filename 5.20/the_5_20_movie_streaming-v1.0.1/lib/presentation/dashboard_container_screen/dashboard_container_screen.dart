import 'models/dashboard_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/account_five_page/account_five_page.dart';
import 'package:the_5_20_movie_streaming/presentation/channel_six_page/channel_six_page.dart';
import 'package:the_5_20_movie_streaming/presentation/dashboard_page/dashboard_page.dart';
import 'package:the_5_20_movie_streaming/presentation/explore_eight_page/explore_eight_page.dart';
import 'package:the_5_20_movie_streaming/widgets/custom_bottom_bar.dart';
import 'provider/dashboard_container_provider.dart';

class DashboardContainerScreen extends StatefulWidget {
  const DashboardContainerScreen({Key? key}) : super(key: key);

  @override
  DashboardContainerScreenState createState() =>
      DashboardContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DashboardContainerProvider(),
        child: DashboardContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class DashboardContainerScreenState extends State<DashboardContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.dashboardPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.accountFivePage,
    );
    NavigatorService.pushNamed(
      AppRoutes.channelSixPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.exploreEightPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreEightPage;
      case BottomBarEnum.Channels:
        return AppRoutes.channelSixPage;
      case BottomBarEnum.User:
        return AppRoutes.accountFivePage;
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
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.exploreEightPage:
        return ExploreEightPage();
      case AppRoutes.channelSixPage:
        return ChannelSixPage();
      case AppRoutes.accountFivePage:
        return AccountFivePage();
      default:
        return DefaultWidget();
    }
  }
}

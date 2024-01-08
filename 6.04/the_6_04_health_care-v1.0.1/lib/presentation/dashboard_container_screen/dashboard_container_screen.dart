import 'notifier/dashboard_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_04_health_care/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/dashboard_page/dashboard_page.dart';
import 'package:the_6_04_health_care/presentation/message_tab_container_page/message_tab_container_page.dart';
import 'package:the_6_04_health_care/presentation/schedule_tab_container_page/schedule_tab_container_page.dart';
import 'package:the_6_04_health_care/presentation/settings_page/settings_page.dart';
import 'package:the_6_04_health_care/widgets/custom_bottom_bar.dart';

class DashboardContainerScreen extends ConsumerStatefulWidget {
  const DashboardContainerScreen({Key? key}) : super(key: key);

  @override
  DashboardContainerScreenState createState() =>
      DashboardContainerScreenState();
}

// ignore_for_file: must_be_immutable
class DashboardContainerScreenState
    extends ConsumerState<DashboardContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
      case BottomBarEnum.Messages:
        return AppRoutes.messageTabContainerPage;
      case BottomBarEnum.Appointment:
        return AppRoutes.scheduleTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.settingsPage;
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
      case AppRoutes.messageTabContainerPage:
        return MessageTabContainerPage();
      case AppRoutes.scheduleTabContainerPage:
        return ScheduleTabContainerPage();
      case AppRoutes.settingsPage:
        return SettingsPage();
      default:
        return DefaultWidget();
    }
  }
}

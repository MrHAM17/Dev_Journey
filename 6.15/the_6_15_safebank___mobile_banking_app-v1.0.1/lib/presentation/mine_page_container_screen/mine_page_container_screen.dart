import 'notifier/mine_page_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/mine_page/mine_page.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/national_bank_page/national_bank_page.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/profile_page/profile_page.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/statistics_tab_container_page/statistics_tab_container_page.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_bottom_app_bar.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_floating_button.dart';

class MinePageContainerScreen extends ConsumerStatefulWidget {
  const MinePageContainerScreen({Key? key}) : super(key: key);

  @override
  MinePageContainerScreenState createState() => MinePageContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MinePageContainerScreenState
    extends ConsumerState<MinePageContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.minePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildTabBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpWhiteA700,
                    height: 25.0.v,
                    width: 25.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildTabBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Userindigo50:
        return AppRoutes.minePage;
      case BottomBarEnum.Statistics:
        return AppRoutes.statisticsTabContainerPage;
      case BottomBarEnum.Usersecondarycontainer:
        return AppRoutes.nationalBankPage;
      case BottomBarEnum.Searchsecondarycontainer:
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
      case AppRoutes.minePage:
        return MinePage();
      case AppRoutes.statisticsTabContainerPage:
        return StatisticsTabContainerPage();
      case AppRoutes.nationalBankPage:
        return NationalBankPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}

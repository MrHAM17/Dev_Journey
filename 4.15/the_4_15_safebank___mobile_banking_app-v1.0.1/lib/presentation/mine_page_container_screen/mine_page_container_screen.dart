import 'controller/mine_page_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/mine_page/mine_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/national_bank_page/national_bank_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/profile_page/profile_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/statistics_tab_container_page/statistics_tab_container_page.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_bottom_app_bar.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_floating_button.dart';

class MinePageContainerScreen extends GetWidget<MinePageContainerController> {
  const MinePageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.minePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildTabBar(),
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
  Widget _buildTabBar() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
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
  Widget getCurrentPage(String currentRoute) {
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

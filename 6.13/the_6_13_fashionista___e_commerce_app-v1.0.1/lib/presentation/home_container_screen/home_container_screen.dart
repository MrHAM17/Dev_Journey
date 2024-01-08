import 'notifier/home_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/my_cart_page/my_cart_page.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/profile_page/profile_page.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/search_page/search_page.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends ConsumerStatefulWidget {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  HomeContainerScreenState createState() => HomeContainerScreenState();
}

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends ConsumerState<HomeContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeTabContainerPage,
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
        return AppRoutes.homeTabContainerPage;
      case BottomBarEnum.Searchgray500:
        return AppRoutes.searchPage;
      case BottomBarEnum.Shoppingcart:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Personoutline:
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
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.myCartPage:
        return MyCartPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}

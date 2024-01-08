import 'models/dashboard_container_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/account_page/account_page.dart';import 'package:the_5_01_e_commerce/presentation/cart_page/cart_page.dart';import 'package:the_5_01_e_commerce/presentation/dashboard_page/dashboard_page.dart';import 'package:the_5_01_e_commerce/presentation/explore_page/explore_page.dart';import 'package:the_5_01_e_commerce/presentation/offer_screen_page/offer_screen_page.dart';import 'package:the_5_01_e_commerce/widgets/custom_bottom_bar.dart';import 'provider/dashboard_container_provider.dart';class DashboardContainerScreen extends StatefulWidget {const DashboardContainerScreen({Key? key}) : super(key: key);

@override DashboardContainerScreenState createState() =>  DashboardContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DashboardContainerProvider(), child: DashboardContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class DashboardContainerScreenState extends State<DashboardContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.dashboardPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardPage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Cart: return AppRoutes.cartPage; case BottomBarEnum.Offer: return AppRoutes.offerScreenPage; case BottomBarEnum.Account: return AppRoutes.accountPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardPage: return DashboardPage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.cartPage: return CartPage(); case AppRoutes.offerScreenPage: return OfferScreenPage(); case AppRoutes.accountPage: return AccountPage(); default: return DefaultWidget();} } 
 }

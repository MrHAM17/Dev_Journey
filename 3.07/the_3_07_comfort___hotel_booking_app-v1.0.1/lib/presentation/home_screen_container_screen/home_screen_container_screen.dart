import 'bloc/home_screen_container_bloc.dart';import 'models/home_screen_container_model.dart';import 'package:flutter/material.dart';import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/profile_settings_page/profile_settings_page.dart';import 'package:the_3_07_comfort___hotel_booking_app/presentation/search_page_tab_container_page/search_page_tab_container_page.dart';import 'package:the_3_07_comfort___hotel_booking_app/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {HomeScreenContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeScreenContainerBloc>(create: (context) => HomeScreenContainerBloc(HomeScreenContainerState(homeScreenContainerModelObj: HomeScreenContainerModel()))..add(HomeScreenContainerInitialEvent()), child: HomeScreenContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<HomeScreenContainerBloc, HomeScreenContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeScreenTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homeScreenTabContainerPage; case BottomBarEnum.Search: return AppRoutes.searchPageTabContainerPage; case BottomBarEnum.Booking: return "/"; case BottomBarEnum.Profile: return AppRoutes.profileSettingsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeScreenTabContainerPage: return HomeScreenTabContainerPage(); case AppRoutes.searchPageTabContainerPage: return SearchPageTabContainerPage(); case AppRoutes.profileSettingsPage: return ProfileSettingsPage(); default: return DefaultWidget();} } 
 }
import 'controller/home_alarm_container_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/home_search_page/home_search_page.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/message_page/message_page.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/my_home_page/my_home_page.dart';import 'package:the_4_21_vertex___real_estate_app/presentation/profile_page/profile_page.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/custom_bottom_bar.dart';class HomeAlarmContainerScreen extends GetWidget<HomeAlarmContainerController> {const HomeAlarmContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: "/", onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }

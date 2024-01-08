import 'bloc/home_alarm_container_bloc.dart';import 'models/home_alarm_container_model.dart';import 'package:flutter/material.dart';import 'package:the_3_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/home_search_page/home_search_page.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/message_page/message_page.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/my_home_page/my_home_page.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/profile_page/profile_page.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeAlarmContainerScreen extends StatelessWidget {HomeAlarmContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeAlarmContainerBloc>(create: (context) => HomeAlarmContainerBloc(HomeAlarmContainerState(homeAlarmContainerModelObj: HomeAlarmContainerModel()))..add(HomeAlarmContainerInitialEvent()), child: HomeAlarmContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<HomeAlarmContainerBloc, HomeAlarmContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: "/", onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }

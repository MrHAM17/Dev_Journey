import 'notifier/home_container_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/explore_page/explore_page.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/home_page/home_page.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/my_library_page/my_library_page.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/profile_settings_page/profile_settings_page.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_bottom_bar.dart';class HomeContainerScreen extends ConsumerStatefulWidget {const HomeContainerScreen({Key? key}) : super(key: key);

@override HomeContainerScreenState createState() =>  HomeContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends ConsumerState<HomeContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Library: return AppRoutes.myLibraryPage; case BottomBarEnum.Profile: return AppRoutes.profileSettingsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.myLibraryPage: return MyLibraryPage(); case AppRoutes.profileSettingsPage: return ProfileSettingsPage(); default: return DefaultWidget();} } 
 }

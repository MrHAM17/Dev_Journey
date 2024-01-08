import 'package:flutter/material.dart';import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_7_21_vertex___real_estate_app/presentation/home_search_page/home_search_page.dart';import 'package:the_7_21_vertex___real_estate_app/presentation/message_page/message_page.dart';import 'package:the_7_21_vertex___real_estate_app/presentation/my_home_page/my_home_page.dart';import 'package:the_7_21_vertex___real_estate_app/presentation/profile_page/profile_page.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_bottom_bar.dart';import 'package:the_7_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class MyHomeEmptyScreen extends StatelessWidget {MyHomeEmptyScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgFrame, height: 255.adaptSize, width: 255.adaptSize), SizedBox(height: 63.v), Text("Ready to sell your home?", style: theme.textTheme.titleLarge), SizedBox(height: 6.v), SizedBox(width: 324.h, child: Text("Relax is making it simpler to sell your home and move forward.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 22.v), CustomElevatedButton(height: 45.v, width: 155.h, text: "Add proprty", onPressed: () {onTapAddProprty(context);})])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the homeScreen when the action is triggered.
onTapAddProprty(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeScreen); } 
 }

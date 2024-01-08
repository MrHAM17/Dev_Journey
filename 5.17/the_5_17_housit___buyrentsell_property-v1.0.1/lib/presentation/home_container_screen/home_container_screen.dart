import 'models/home_container_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/example_data_page/example_data_page.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/home_tab_container_page/home_tab_container_page.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/transaction_tab_container_page/transaction_tab_container_page.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/vertical_page/vertical_page.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_bottom_bar.dart';import 'provider/home_container_provider.dart';class HomeContainerScreen extends StatefulWidget {const HomeContainerScreen({Key? key}) : super(key: key);

@override HomeContainerScreenState createState() =>  HomeContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeContainerProvider(), child: HomeContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends State<HomeContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Userprimary: return AppRoutes.homeTabContainerPage; case BottomBarEnum.Rewind: return AppRoutes.exampleDataPage; case BottomBarEnum.Favoritebluegray80001: return AppRoutes.verticalPage; case BottomBarEnum.Lock: return AppRoutes.transactionTabContainerPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeTabContainerPage: return HomeTabContainerPage(); case AppRoutes.exampleDataPage: return ExampleDataPage(); case AppRoutes.verticalPage: return VerticalPage(); case AppRoutes.transactionTabContainerPage: return TransactionTabContainerPage(); default: return DefaultWidget();} } 
 }

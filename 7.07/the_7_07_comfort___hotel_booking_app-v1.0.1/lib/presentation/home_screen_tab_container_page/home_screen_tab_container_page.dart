import 'package:flutter/material.dart';import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_7_07_comfort___hotel_booking_app/presentation/home_screen_page/home_screen_page.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_search_view.dart';class HomeScreenTabContainerPage extends StatefulWidget {const HomeScreenTabContainerPage({Key? key}) : super(key: key);

@override HomeScreenTabContainerPageState createState() =>  HomeScreenTabContainerPageState();

 }

// ignore_for_file: must_be_immutable
class HomeScreenTabContainerPageState extends State<HomeScreenTabContainerPage> with  TickerProviderStateMixin {TextEditingController searchController = TextEditingController();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 25.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Hello, Daniel 👋", style: theme.textTheme.headlineLarge))), SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: searchController, hintText: "Search")), SizedBox(height: 31.v), _buildTabview(context), SizedBox(height: 1312.v, child: TabBarView(controller: tabviewController, children: [HomeScreenPage(), HomeScreenPage(), HomeScreenPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 50.v, leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFloatingIcon, margin: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 9.v)), title: AppbarTitle(text: "Comfort", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIcons, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 11.h), onTap: () {onTapIcons(context);}), AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsWhiteA700, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 35.h))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 38.v, width: 376.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: theme.colorScheme.primary, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(19.h)), tabs: [Tab(child: Text("Recommended")), Tab(child: Text("Popular")), Tab(child: Text("Trending"))])); } 
/// Navigates to the notificationsScreen when the action is triggered.
onTapIcons(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationsScreen); } 
 }

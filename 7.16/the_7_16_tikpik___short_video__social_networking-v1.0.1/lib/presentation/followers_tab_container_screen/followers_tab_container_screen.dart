import 'package:flutter/material.dart';import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_7_16_tikpik___short_video__social_networking/presentation/followers_page/followers_page.dart';import 'package:the_7_16_tikpik___short_video__social_networking/presentation/suggested_page/suggested_page.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';class FollowersTabContainerScreen extends StatefulWidget {const FollowersTabContainerScreen({Key? key}) : super(key: key);

@override FollowersTabContainerScreenState createState() =>  FollowersTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class FollowersTabContainerScreenState extends State<FollowersTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 30.v), _buildTabview(context), SizedBox(height: 761.v, child: TabBarView(controller: tabviewController, children: [FollowersPage(), FollowersPage(), SuggestedPage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Jenny_wilson", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewindGray900, margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 13.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 39.v, width: 362.h, margin: EdgeInsets.only(left: 24.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("Followers")), Tab(child: Text("Following")), Tab(child: Text("Suggested"))])); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }

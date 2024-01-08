import 'package:flutter/material.dart';import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_7_16_tikpik___short_video__social_networking/presentation/posts_add_sounds_page/posts_add_sounds_page.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';class PostsAddSoundsTabContainerScreen extends StatefulWidget {const PostsAddSoundsTabContainerScreen({Key? key}) : super(key: key);

@override PostsAddSoundsTabContainerScreenState createState() =>  PostsAddSoundsTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class PostsAddSoundsTabContainerScreenState extends State<PostsAddSoundsTabContainerScreen> with  TickerProviderStateMixin {TextEditingController searchController = TextEditingController();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: searchController, hintText: "Search")), SizedBox(height: 25.v), Container(height: 39.v, width: 322.h, margin: EdgeInsets.only(left: 24.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("Discover")), Tab(child: Text("Favorites"))])), SizedBox(height: 691.v, child: TabBarView(controller: tabviewController, children: [PostsAddSoundsPage(), PostsAddSoundsPage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 44.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCategoriesXCloseGray900, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapCategoriesXClose(context);}), centerTitle: true, title: AppbarTitle(text: "All Sounds"), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray900, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))]); } 

/// Navigates back to the previous screen.
onTapCategoriesXClose(BuildContext context) { Navigator.pop(context); } 
 }

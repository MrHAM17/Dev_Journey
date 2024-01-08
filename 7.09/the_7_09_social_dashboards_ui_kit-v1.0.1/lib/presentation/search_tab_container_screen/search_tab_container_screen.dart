import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/presentation/search_page/search_page.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';

class SearchTabContainerScreen extends StatefulWidget {
  const SearchTabContainerScreen({Key? key}) : super(key: key);

  @override
  SearchTabContainerScreenState createState() =>
      SearchTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class SearchTabContainerScreenState extends State<SearchTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 53.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("Explore Stories",
                              style: CustomTextStyles.titleLargeWhiteA700)),
                      SizedBox(height: 28.v),
                      _buildTabview(context),
                      Expanded(
                          child: SizedBox(
                              height: 570.v,
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    SearchPage(),
                                    SearchPage(),
                                    SearchPage(),
                                    SearchPage(),
                                    SearchPage()
                                  ])))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgButtonIcon,
            margin: EdgeInsets.only(left: 28.h, top: 9.v, bottom: 9.v)),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "Search in social...",
            controller: searchController));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 26.v,
        width: 347.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.blueGray100,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
            indicatorColor: appTheme.black90000,
            tabs: [
              Tab(child: Text("For You")),
              Tab(child: Text("Following")),
              Tab(child: Text("Popular")),
              Tab(child: Text("Featured")),
              Tab(child: Text("Live"))
            ]));
  }
}

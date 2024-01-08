import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/presentation/search_results_sounds_page/search_results_sounds_page.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/presentation/search_results_top_page/search_results_top_page.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/presentation/search_results_users_page/search_results_users_page.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/presentation/search_results_videos_page/search_results_videos_page.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';

class SearchResultsUsersTabContainerScreen extends StatefulWidget {
  const SearchResultsUsersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsUsersTabContainerScreenState createState() =>
      SearchResultsUsersTabContainerScreenState();
}

class SearchResultsUsersTabContainerScreenState
    extends State<SearchResultsUsersTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Ariana",
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                height: 38.v,
                width: 331.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: appTheme.gray500,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "Top",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Users",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Videos",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Sounds",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 737.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchResultsTopPage(),
                    SearchResultsUsersPage(),
                    SearchResultsVideosPage(),
                    SearchResultsSoundsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

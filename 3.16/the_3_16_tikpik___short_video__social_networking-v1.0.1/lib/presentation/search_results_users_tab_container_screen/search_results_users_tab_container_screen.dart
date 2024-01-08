import 'bloc/search_results_users_tab_container_bloc.dart';
import 'models/search_results_users_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_sounds_page/search_results_sounds_page.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_top_page/search_results_top_page.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_users_page/search_results_users_page.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_videos_page/search_results_videos_page.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';

class SearchResultsUsersTabContainerScreen extends StatefulWidget {
  const SearchResultsUsersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsUsersTabContainerScreenState createState() =>
      SearchResultsUsersTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsUsersTabContainerBloc>(
      create: (context) => SearchResultsUsersTabContainerBloc(
          SearchResultsUsersTabContainerState(
        searchResultsUsersTabContainerModelObj:
            SearchResultsUsersTabContainerModel(),
      ))
        ..add(SearchResultsUsersTabContainerInitialEvent()),
      child: SearchResultsUsersTabContainerScreen(),
    );
  }
}

class SearchResultsUsersTabContainerScreenState
    extends State<SearchResultsUsersTabContainerScreen>
    with TickerProviderStateMixin {
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
                child: BlocSelector<
                    SearchResultsUsersTabContainerBloc,
                    SearchResultsUsersTabContainerState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_ariana".tr,
                    );
                  },
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
                        "lbl_top".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_users".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_videos".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_sounds".tr,
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

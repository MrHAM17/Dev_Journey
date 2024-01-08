import 'package:flutter/material.dart';
import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_7_07_comfort___hotel_booking_app/presentation/filter_result_page/filter_result_page.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPageTabContainerPage extends StatefulWidget {
  const SearchPageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageTabContainerPageState createState() =>
      SearchPageTabContainerPageState();
}

class SearchPageTabContainerPageState extends State<SearchPageTabContainerPage>
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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 650.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      FilterResultPage(),
                      FilterResultPage(),
                      FilterResultPage(),
                      FilterResultPage(),
                      FilterResultPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 38.v,
      width: 404.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "All Hotel",
            ),
          ),
          Tab(
            child: Text(
              "Recommended",
            ),
          ),
          Tab(
            child: Text(
              "Popular",
            ),
          ),
          Tab(
            child: Text(
              "Trending",
            ),
          ),
          Tab(
            child: Text(
              "Nearby",
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:the_7_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_7_07_comfort___hotel_booking_app/presentation/search_type_page/search_type_page.dart';
import 'package:the_7_07_comfort___hotel_booking_app/widgets/custom_search_view.dart';

class SearchTypeTabContainerScreen extends StatefulWidget {
  const SearchTypeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypeTabContainerScreenState createState() =>
      SearchTypeTabContainerScreenState();
}

class SearchTypeTabContainerScreenState
    extends State<SearchTypeTabContainerScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
                  hintText: "Hotel",
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              SizedBox(
                height: 740.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchTypePage(),
                    SearchTypePage(),
                    SearchTypePage(),
                  ],
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
      width: 372.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
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
        ],
      ),
    );
  }
}

import 'bloc/search_type_tab_container_bloc.dart';
import 'models/search_type_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_3_07_comfort___hotel_booking_app/presentation/search_type_page/search_type_page.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/custom_search_view.dart';

class SearchTypeTabContainerScreen extends StatefulWidget {
  const SearchTypeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypeTabContainerScreenState createState() =>
      SearchTypeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTypeTabContainerBloc>(
      create: (context) =>
          SearchTypeTabContainerBloc(SearchTypeTabContainerState(
        searchTypeTabContainerModelObj: SearchTypeTabContainerModel(),
      ))
            ..add(SearchTypeTabContainerInitialEvent()),
      child: SearchTypeTabContainerScreen(),
    );
  }
}

class SearchTypeTabContainerScreenState
    extends State<SearchTypeTabContainerScreen> with TickerProviderStateMixin {
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
                child: BlocSelector<SearchTypeTabContainerBloc,
                    SearchTypeTabContainerState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_hotel".tr,
                    );
                  },
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
              "lbl_all_hotel".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_recommended".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_popular".tr,
            ),
          ),
        ],
      ),
    );
  }
}

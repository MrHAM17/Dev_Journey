import 'controller/search_type_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_4_07_comfort___hotel_booking_app/presentation/search_type_page/search_type_page.dart';
import 'package:the_4_07_comfort___hotel_booking_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchTypeTabContainerScreen
    extends GetWidget<SearchTypeTabContainerController> {
  const SearchTypeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

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
                  controller: controller.searchController,
                  hintText: "lbl_hotel".tr,
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(),
              SizedBox(
                height: 740.v,
                child: TabBarView(
                  controller: controller.tabviewController,
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
  Widget _buildTabview() {
    return Container(
      height: 38.v,
      width: 372.h,
      child: TabBar(
        controller: controller.tabviewController,
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

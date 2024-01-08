import '../search_page/widgets/frame3_item_widget.dart';
import '../search_page/widgets/frame5_item_widget.dart';
import '../search_page/widgets/frame6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 9.v),
                    _buildFrame1(context),
                    SizedBox(height: 25.v),
                    Text(
                      "Recommendations for you",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 10.v),
                    _buildFrame2(context),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "Search by title, genre, actor",
        controller: searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Searches",
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 11.v),
          Wrap(
            runSpacing: 12.v,
            spacing: 12.h,
            children: List<Widget>.generate(4, (index) => Frame3ItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 135.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Frame5ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return SizedBox(
      height: 135.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Frame6ItemWidget();
        },
      ),
    );
  }
}

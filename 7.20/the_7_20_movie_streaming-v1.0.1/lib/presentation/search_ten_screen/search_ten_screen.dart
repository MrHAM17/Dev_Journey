import '../search_ten_screen/widgets/searchten_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_checkbox_button.dart';

// ignore_for_file: must_be_immutable
class SearchTenScreen extends StatelessWidget {
  SearchTenScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  bool popularSearch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconPrimary20x20,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("Trending Search",
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018))
                              ]),
                              SizedBox(height: 26.v),
                              Text("Love in Trouble",
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 20.v),
                              Text("Hotel de Luna",
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 20.v),
                              Text("The Heirs",
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 21.v),
                              Text("What’s Wrong With Secretary Kim",
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 29.v),
                              _buildFrameEightyFour(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title: AppbarTitleSearchviewOne(
            hintText: "Search for movies...", controller: searchController));
  }

  /// Section Widget
  Widget _buildFrameEightyFour(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomCheckboxButton(
          text: "Popular Search",
          value: popularSearch,
          onChange: (value) {
            popularSearch = value;
          }),
      SizedBox(height: 16.v),
      SizedBox(
          height: 176.v,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return SearchtenItemWidget(onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              }))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }
}

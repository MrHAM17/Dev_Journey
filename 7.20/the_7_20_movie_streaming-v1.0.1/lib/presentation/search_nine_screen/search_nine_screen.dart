import '../search_nine_screen/widgets/searchnine_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchNineScreen extends StatelessWidget {
  SearchNineScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          CustomSearchView(
                              controller: searchController,
                              hintText: "Search for movies..."),
                          SizedBox(height: 32.v),
                          _buildSearchNine(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(text: "Search", margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildSearchNine(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 177.v,
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return SearchnineItemWidget(onTapMovieCard: () {
            onTapMovieCard(context);
          });
        });
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }
}

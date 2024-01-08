import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_search_view.dart';

class SearchEightScreen extends StatelessWidget {
  SearchEightScreen({Key? key})
      : super(
          key: key,
        );

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
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search for movies...",
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Text(
                    "Trending Search",
                    style: CustomTextStyles.headlineSmallMedium,
                  ),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 17.v),
                  Text(
                    "Treasure Island",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Love in Trouble",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Hotel de Luna",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "The Heirs",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "What’s Wrong With Secretary Kim",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Moby Dick",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Bullet Boy",
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Search",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnprimarycontainer,
          margin: EdgeInsets.only(left: 16.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }
}

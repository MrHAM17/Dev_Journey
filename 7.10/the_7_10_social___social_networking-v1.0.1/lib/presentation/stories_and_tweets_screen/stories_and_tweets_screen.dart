import '../stories_and_tweets_screen/widgets/frame1_item_widget.dart';
import '../stories_and_tweets_screen/widgets/live_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_10_social___social_networking/core/app_export.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';

class StoriesAndTweetsScreen extends StatelessWidget {
  StoriesAndTweetsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 32.v),
            child: Column(
              children: [
                _buildStories(context),
                SizedBox(height: 22.v),
                _buildFrame(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "Search",
        controller: searchController,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStories(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Stories",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 19.v),
          SizedBox(
            height: 89.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 2.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return LiveItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.v),
          child: SizedBox(
            width: double.maxFinite,
            child: Divider(
              height: 2.v,
              thickness: 2.v,
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return Frame1ItemWidget();
      },
    );
  }
}

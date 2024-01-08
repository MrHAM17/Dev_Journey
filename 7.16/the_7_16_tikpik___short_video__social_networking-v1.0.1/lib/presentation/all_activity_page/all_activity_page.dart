import '../all_activity_page/widgets/followback1_item_widget.dart';
import '../all_activity_page/widgets/followback_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AllActivityPage extends StatelessWidget {
  AllActivityPage({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 22.v),
              _buildFollowBack(context),
              SizedBox(height: 26.v),
              _buildFollowBack1(context),
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
      height: 49.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame2,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleDropdown(
        hintText: "All Activity",
        items: dropdownItemList,
        onTap: (value) {},
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconlyCurvedSend,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 11.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFollowBack(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 24.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return FollowbackItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildFollowBack1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Yesterday",
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 22.v),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return Followback1ItemWidget();
          },
        ),
      ],
    );
  }
}

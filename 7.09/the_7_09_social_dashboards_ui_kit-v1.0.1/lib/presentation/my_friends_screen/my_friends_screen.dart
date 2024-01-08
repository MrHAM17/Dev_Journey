import '../my_friends_screen/widgets/myfriends_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/appbar_title_searchview_two.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MyFriendsScreen extends StatelessWidget {
  MyFriendsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 28.h, top: 16.v, right: 28.h),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8.v);
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return MyfriendsItemWidget();
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgButtonIcon,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 31.v),
            onTap: () {
              onTapButtonIcon(context);
            }),
        title: AppbarTitleSearchviewTwo(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "Search in friends",
            controller: searchController),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapButtonIcon(BuildContext context) {
    Navigator.pop(context);
  }
}

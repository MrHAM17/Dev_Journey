import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_7_05_blog_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SearchTopicsScreen extends StatelessWidget {
  SearchTopicsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Explore Topics",
                          style: CustomTextStyles.titleMediumBold),
                      SizedBox(height: 18.v),
                      Text("Books", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 12.v),
                      Text("Fiction", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("Comics", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("Art", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 14.v),
                      Text("Visual Design", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("Technology", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      Text("Science", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("Business", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("Psychology", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 12.v),
                      Text("Creativity", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      Text("Education", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 13.v),
                      Text("Feminism", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("Artificial Intelligence",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 10.v),
                      Text("Health", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("Design", style: theme.textTheme.bodyLarge),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 10.h),
            hintText: "Search",
            controller: searchController));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

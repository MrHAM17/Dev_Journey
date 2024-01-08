import 'controller/blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class BlogScreen extends GetWidget<BlogController> {
  const BlogScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              _buildFrameFortyFive(),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 265.h,
                  margin: EdgeInsets.only(right: 69.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor3".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 335.h,
                child: Text(
                  "msg_lorem_ipsum_dolor4".tr,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildFour(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameFortyFive() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "msg_john_doe_in_lorem".tr,
          style: CustomTextStyles.titleSmallOnPrimary,
        ),
        Spacer(),
        Container(
          height: 3.adaptSize,
          width: 3.adaptSize,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 10.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray600,
            borderRadius: BorderRadius.circular(
              1.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "lbl_29_july".tr,
            style: CustomTextStyles.titleSmallGray600,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFour() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBlogThumbnail,
          height: 174.v,
          width: 335.h,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
        SizedBox(height: 17.v),
        Text(
          "msg_image_credit_lorem".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 23.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 298.h,
            margin: EdgeInsets.only(right: 36.h),
            child: Text(
              "msg_duis_aute_irure".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

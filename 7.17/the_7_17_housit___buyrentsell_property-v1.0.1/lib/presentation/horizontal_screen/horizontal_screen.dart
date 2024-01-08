import '../horizontal_screen/widgets/horizontal_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';

class HorizontalScreen extends StatelessWidget {
  const HorizontalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              _buildItemHeader(context),
              SizedBox(height: 23.v),
              _buildHorizontal(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "My favorite",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItemHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            child: Text(
              "0",
              style: CustomTextStyles.titleMediumRedA200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              "estates",
              style: CustomTextStyles.titleMediumMedium,
            ),
          ),
          Spacer(),
          Container(
            width: 93.h,
            padding: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 24.v,
                  width: 36.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGridOnprimarycontainer,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  height: 24.v,
                  width: 36.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: CustomImageView(
                    imagePath:
                        ImageConstant.imgIconHorizontalBlueGray8000112x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 7.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return HorizontalItemWidget();
        },
      ),
    );
  }
}

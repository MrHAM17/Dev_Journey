import '../explore_shop_screen/widgets/frame_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

class ExploreShopScreen extends StatelessWidget {
  const ExploreShopScreen({Key? key})
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
            horizontal: 16.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 304.h,
                margin: EdgeInsets.only(right: 38.h),
                child: Text(
                  "Choose which you have more interest\nto give you best app experience.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildFrame(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildExploreShop(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      title: AppbarTitle(
        text: "What products\nyou like most!",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Wrap(
      runSpacing: 12.v,
      spacing: 12.h,
      children: List<Widget>.generate(21, (index) => FrameItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildExploreShop(BuildContext context) {
    return CustomElevatedButton(
      text: "Explore Shop",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
    );
  }
}

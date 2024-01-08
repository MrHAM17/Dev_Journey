import '../order_status_screen/widgets/orderstatus_item_widget.dart';
import '../order_status_screen/widgets/unsplashvfrcrteqkleight_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OrderStatusScreen extends StatelessWidget {
  OrderStatusScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildUnsplashVFrcRtEQKLEight(context),
                      SizedBox(height: 13.v),
                      _buildOrderStatus(context)
                    ])),
            bottomNavigationBar: _buildConfirmDelivery(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Order Status"));
  }

  /// Section Widget
  Widget _buildUnsplashVFrcRtEQKLEight(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 290.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              sliderIndex = index;
            }),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return UnsplashvfrcrteqkleightItemWidget();
        });
  }

  /// Section Widget
  Widget _buildOrderStatus(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 131.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return OrderstatusItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildConfirmDelivery(BuildContext context) {
    return CustomElevatedButton(
        text: "Confirm Delivery",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 21.v),
        onPressed: () {
          onTapConfirmDelivery(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapConfirmDelivery(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}

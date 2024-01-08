import '../product_screen/widgets/twelve_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text("Boyfriend Tee",
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 24.v),
                      _buildTwelve(context),
                      SizedBox(height: 41.v),
                      _buildFiftyTwo(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 28.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup86,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup84,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 37.h))
        ]);
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 400.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              sliderIndex = index;
            }),
        itemCount: 9,
        itemBuilder: (context, index, realIndex) {
          return TwelveItemWidget();
        });
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 22.h, right: 15.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 46.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Text("S", style: CustomTextStyles.titleLargeBlack90001)),
              Container(
                  width: 45.h,
                  margin: EdgeInsets.only(left: 9.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v),
                  decoration: AppDecoration.black.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("M",
                      style: CustomTextStyles.titleLargeWhiteA700Medium)),
              Container(
                  width: 46.adaptSize,
                  margin: EdgeInsets.only(left: 9.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Text("L", style: CustomTextStyles.titleLargeBlack90001)),
              Container(
                  width: 45.h,
                  margin: EdgeInsets.only(left: 9.h),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Text("XL", style: CustomTextStyles.titleLargeBlack90001)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 46.v,
                  width: 33.h),
              Container(
                  width: 41.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v),
                  decoration: AppDecoration.outlineBlack,
                  child:
                      Text("1", style: CustomTextStyles.bodySmallBlack90001)),
              CustomImageView(
                  imagePath: ImageConstant.imgPlusBlack900,
                  height: 46.v,
                  width: 33.h)
            ])));
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 150.h, right: 150.h, bottom: 38.v),
        decoration: AppDecoration.fillBlack,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("Add to cart", style: CustomTextStyles.titleLargeWhiteA700Bold),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 13.v,
              width: 91.h,
              margin: EdgeInsets.only(top: 4.v))
        ]));
  }
}

import '../product_detail_page_screen/widgets/productcarousel_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProductDetailPageScreen extends StatelessWidget {
  ProductDetailPageScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildProductCarousel(context),
                              SizedBox(height: 21.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 4.v,
                                      child: AnimatedSmoothIndicator(
                                          activeIndex: sliderIndex,
                                          count: 1,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 4,
                                              activeDotColor:
                                                  theme.colorScheme.primary,
                                              dotColor: appTheme.gray600,
                                              dotHeight: 4.v,
                                              dotWidth: 15.h)))),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Print Maxi Dress",
                                      style: CustomTextStyles
                                          .headlineSmallMedium)),
                              SizedBox(height: 13.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("99.30",
                                      style: theme.textTheme.titleLarge)),
                              SizedBox(height: 29.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("PRODUCT DETAILS",
                                      style: CustomTextStyles
                                          .titleSmallOnPrimarySemiBold_1)),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 356.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 17.h),
                                      child: Text(
                                          "Mini dress with gather at the sides. Button fastening and slightly dropped shoulder line. Wide sleeves with gathered cuffs. Vertical panels and gather in combination with voluminous sleeves visually adjust the silhouette, making it more graceful",
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumGray600_1
                                              .copyWith(height: 1.50))))
                            ])))),
            bottomNavigationBar: _buildAddToCart(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Shopsie"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProductCarousel(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 289.v,
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
          return ProductcarouselItemWidget();
        });
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "Add To Cart",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 64.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}

import '../product_detail_page_screen/widgets/productcarousel_item_widget.dart';
import 'models/product_detail_page_model.dart';
import 'models/productcarousel_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'provider/product_detail_page_provider.dart';

class ProductDetailPageScreen extends StatefulWidget {
  const ProductDetailPageScreen({Key? key}) : super(key: key);

  @override
  ProductDetailPageScreenState createState() => ProductDetailPageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductDetailPageProvider(),
        child: ProductDetailPageScreen());
  }
}

class ProductDetailPageScreenState extends State<ProductDetailPageScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                                  child: Consumer<ProductDetailPageProvider>(
                                      builder: (context, provider, child) {
                                    return SizedBox(
                                        height: 4.v,
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: provider.sliderIndex,
                                            count: provider
                                                .productDetailPageModelObj
                                                .productcarouselItemList
                                                .length,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 4,
                                                activeDotColor:
                                                    theme.colorScheme.primary,
                                                dotColor: appTheme.gray600,
                                                dotHeight: 4.v,
                                                dotWidth: 15.h)));
                                  })),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_print_maxi_dress".tr,
                                      style: CustomTextStyles
                                          .headlineSmallMedium)),
                              SizedBox(height: 13.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_99_30".tr,
                                      style: theme.textTheme.titleLarge)),
                              SizedBox(height: 29.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_product_details".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimarySemiBold_1)),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 356.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 17.h),
                                      child: Text("msg_mini_dress_with".tr,
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
        title: AppbarTitle(text: "lbl_shopsie".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProductCarousel(BuildContext context) {
    return Consumer<ProductDetailPageProvider>(
        builder: (context, provider, child) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 289.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                provider.sliderIndex = index;
              }),
          itemCount:
              provider.productDetailPageModelObj.productcarouselItemList.length,
          itemBuilder: (context, index, realIndex) {
            ProductcarouselItemModel model = provider
                .productDetailPageModelObj.productcarouselItemList[index];
            return ProductcarouselItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 64.v));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}

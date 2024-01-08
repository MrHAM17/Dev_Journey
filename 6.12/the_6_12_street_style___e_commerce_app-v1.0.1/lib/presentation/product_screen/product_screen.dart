import '../product_screen/widgets/twelve_item_widget.dart';
import 'models/twelve_item_model.dart';
import 'notifier/product_notifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_6_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_6_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class ProductScreen extends ConsumerStatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  ProductScreenState createState() => ProductScreenState();
}

class ProductScreenState extends ConsumerState<ProductScreen> {
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
                          child: Text("lbl_boyfriend_tee".tr,
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
    return Consumer(builder: (context, ref, _) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 400.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                ref.watch(productNotifier).sliderIndex = index;
              }),
          itemCount: ref
                  .watch(productNotifier)
                  .productModelObj
                  ?.twelveItemList
                  .length ??
              0,
          itemBuilder: (context, index, realIndex) {
            TwelveItemModel model = ref
                    .watch(productNotifier)
                    .productModelObj
                    ?.twelveItemList[index] ??
                TwelveItemModel();
            return TwelveItemWidget(model);
          });
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
                  child: Text("lbl_s".tr,
                      style: CustomTextStyles.titleLargeBlack90001)),
              Container(
                  width: 45.h,
                  margin: EdgeInsets.only(left: 9.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v),
                  decoration: AppDecoration.black.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("lbl_m".tr,
                      style: CustomTextStyles.titleLargeWhiteA700Medium)),
              Container(
                  width: 46.adaptSize,
                  margin: EdgeInsets.only(left: 9.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("lbl_l".tr,
                      style: CustomTextStyles.titleLargeBlack90001)),
              Container(
                  width: 45.h,
                  margin: EdgeInsets.only(left: 9.h),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("lbl_xl".tr,
                      style: CustomTextStyles.titleLargeBlack90001)),
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
                  child: Text("lbl_1".tr,
                      style: CustomTextStyles.bodySmallBlack90001)),
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
          Text("lbl_add_to_cart".tr,
              style: CustomTextStyles.titleLargeWhiteA700Bold),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 13.v,
              width: 91.h,
              margin: EdgeInsets.only(top: 4.v))
        ]));
  }
}

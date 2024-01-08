import '../favorite_screen/widgets/favorite_item_widget.dart';
import 'controller/favorite_controller.dart';
import 'models/favorite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class FavoriteScreen extends GetWidget<FavoriteController> {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_favorite".tr,
                                  style: theme.textTheme.displayMedium)),
                          SizedBox(height: 19.v),
                          _buildCoupon(),
                          SizedBox(height: 30.v),
                          Column(children: [
                            _buildFavorite(),
                            SizedBox(height: 22.v),
                            _buildEightyTwo()
                          ])
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
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
  Widget _buildCoupon() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 100.h, vertical: 32.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgCoupon), fit: BoxFit.cover)),
        child: Text("lbl_coupon".tr,
            style: CustomTextStyles.displaySmallWhiteA700));
  }

  /// Section Widget
  Widget _buildFavorite() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 217.v,
                crossAxisCount: 2,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                controller.favoriteModelObj.value.favoriteItemList.value.length,
            itemBuilder: (context, index) {
              FavoriteItemModel model = controller
                  .favoriteModelObj.value.favoriteItemList.value[index];
              return FavoriteItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildEightyTwo() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.only(right: 8.h), child: _buildCard2()),
          Padding(padding: EdgeInsets.only(left: 8.h), child: _buildCard2())
        ]));
  }

  /// Common widget
  Widget _buildCard2() {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle124,
                  height: 180.v,
                  width: 175.h,
                  radius: BorderRadius.circular(30.h)),
              SizedBox(height: 12.v),
              Text("lbl_box_tee".tr,
                  style: CustomTextStyles.titleMediumGray60001)
            ])));
  }
}

import '../shop_screen/widgets/shop_item_widget.dart';
import 'bloc/shop_bloc.dart';
import 'models/shop_item_model.dart';
import 'models/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/custom_outlined_button.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShopBloc>(
        create: (context) => ShopBloc(ShopState(shopModelObj: ShopModel()))
          ..add(ShopInitialEvent()),
        child: ShopScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_shop".tr,
                                  style: theme.textTheme.displayMedium),
                              SizedBox(height: 5.v),
                              Text("msg_hollywood_hairstyles".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 39.v),
                              _buildSeventeen(context),
                              SizedBox(height: 27.v),
                              _buildShop(context),
                              SizedBox(height: 12.v),
                              _buildThirtySeven(context)
                            ]))))));
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
  Widget _buildSeventeen(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomOutlinedButton(
          width: 169.h,
          text: "lbl_sort".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgShare,
                  height: 13.v,
                  width: 18.h))),
      CustomElevatedButton(
          width: 177.h,
          text: "lbl_filter".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgGroup24,
                  height: 24.adaptSize,
                  width: 24.adaptSize)))
    ]);
  }

  /// Section Widget
  Widget _buildShop(BuildContext context) {
    return BlocSelector<ShopBloc, ShopState, ShopModel?>(
        selector: (state) => state.shopModelObj,
        builder: (context, shopModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 302.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: shopModelObj?.shopItemList.length ?? 0,
              itemBuilder: (context, index) {
                ShopItemModel model =
                    shopModelObj?.shopItemList[index] ?? ShopItemModel();
                return ShopItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 29.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_surge_short".tr, style: theme.textTheme.titleMedium),
            SizedBox(height: 4.v),
            Text("lbl_68_usd".tr,
                style: CustomTextStyles.titleMediumGray50001_1)
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_sweat_jogger_french".tr,
                style: theme.textTheme.titleMedium),
            SizedBox(height: 4.v),
            Text("lbl_68_usd".tr,
                style: CustomTextStyles.titleMediumGray50001_1)
          ])
        ]));
  }
}

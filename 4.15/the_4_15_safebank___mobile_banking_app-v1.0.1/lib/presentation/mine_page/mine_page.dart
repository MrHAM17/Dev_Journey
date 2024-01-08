import '../mine_page/widgets/fifteen_item_widget.dart';
import '../mine_page/widgets/thirtytwo_item_widget.dart';
import 'controller/mine_controller.dart';
import 'models/fifteen_item_model.dart';
import 'models/mine_model.dart';
import 'models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_elevated_button.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MinePage extends StatelessWidget {
  MinePage({Key? key}) : super(key: key);

  MineController controller = Get.put(MineController(MineModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  _buildThirtyTwo(),
                  SizedBox(height: 24.v),
                  _buildTwentySix(),
                  SizedBox(height: 23.v),
                  _buildRecentTransfer(),
                  SizedBox(height: 49.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 49.v,
        title: Container(
            width: 111.h,
            margin: EdgeInsets.only(left: 24.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_hello_alex".tr,
                      style: CustomTextStyles.titleMediumSemiBold18_1),
                  TextSpan(
                      text: "lbl_welcome_back".tr,
                      style: CustomTextStyles.titleSmallSecondaryContainer_1)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse308,
              margin: EdgeInsets.fromLTRB(24.h, 6.v, 24.h, 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyTwo() {
    return SizedBox(
        height: 163.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount:
                controller.mineModelObj.value.thirtytwoItemList.value.length,
            itemBuilder: (context, index) {
              ThirtytwoItemModel model =
                  controller.mineModelObj.value.thirtytwoItemList.value[index];
              return ThirtytwoItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildTwentySix() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomElevatedButton(
          height: 40.v,
          width: 125.h,
          text: "lbl_transfer".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 9.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.fillIndigoA,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700),
      CustomElevatedButton(
          height: 40.v,
          width: 125.h,
          text: "lbl_request".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose14x14,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.fillGreen,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
          onPressed: () {
            onTapRequest();
          }),
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(imagePath: ImageConstant.imgMore))
    ]);
  }

  /// Section Widget
  Widget _buildRecentTransfer() {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("lbl_recent_transfer".tr,
            style: CustomTextStyles.titleMediumSemiBold18),
        GestureDetector(
            onTap: () {
              onTapTxtSeeAll();
            },
            child: Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                child: Text("lbl_see_all".tr,
                    style: CustomTextStyles.labelLargeSecondaryContainer)))
      ]),
      SizedBox(height: 13.v),
      Obx(() => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 15.v);
          },
          itemCount: controller.mineModelObj.value.fifteenItemList.value.length,
          itemBuilder: (context, index) {
            FifteenItemModel model =
                controller.mineModelObj.value.fifteenItemList.value[index];
            return FifteenItemWidget(model);
          }))
    ]);
  }

  /// Navigates to the transferRequestScreen when the action is triggered.
  onTapRequest() {
    Get.toNamed(
      AppRoutes.transferRequestScreen,
    );
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }
}

import '../my_order_screen/widgets/myorder_item_widget.dart';
import 'controller/my_order_controller.dart';
import 'models/myorder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class MyOrderScreen extends GetWidget<MyOrderController> {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text("lbl_my_order".tr,
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 14.v),
                      SizedBox(
                          height: 703.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 51.h, bottom: 68.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 9.v),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl".tr,
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    TextSpan(
                                                        text: "lbl_5"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    TextSpan(
                                                        text: "lbl_8".tr,
                                                        style: theme.textTheme
                                                            .headlineMedium)
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 89.h),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl_1".tr,
                                                        style: CustomTextStyles
                                                            .displaySmallBlack90001),
                                                    TextSpan(
                                                        text: "lbl_x".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumBlack90001)
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            _buildMyOrder()
                          ]))
                    ]))));
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
  Widget _buildMyOrder() {
    return Align(
        alignment: Alignment.center,
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount:
                controller.myOrderModelObj.value.myorderItemList.value.length,
            itemBuilder: (context, index) {
              MyorderItemModel model =
                  controller.myOrderModelObj.value.myorderItemList.value[index];
              return MyorderItemWidget(model);
            })));
  }
}

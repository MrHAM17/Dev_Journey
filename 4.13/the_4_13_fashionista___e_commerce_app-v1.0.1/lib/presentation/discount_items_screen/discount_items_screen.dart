import '../discount_items_screen/widgets/discountitems_item_widget.dart';
import 'controller/discount_items_controller.dart';
import 'models/discountitems_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class DiscountItemsScreen extends GetWidget<DiscountItemsController> {
  const DiscountItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 14.v);
                    },
                    itemCount: controller.discountItemsModelObj.value
                        .discountitemsItemList.value.length,
                    itemBuilder: (context, index) {
                      DiscountitemsItemModel model = controller
                          .discountItemsModelObj
                          .value
                          .discountitemsItemList
                          .value[index];
                      return DiscountitemsItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_discount_items".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}

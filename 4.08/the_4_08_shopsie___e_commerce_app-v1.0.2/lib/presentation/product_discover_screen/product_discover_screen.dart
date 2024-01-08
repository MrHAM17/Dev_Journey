import '../product_discover_screen/widgets/list_item_widget.dart';
import 'controller/product_discover_controller.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class ProductDiscoverScreen extends GetWidget<ProductDiscoverController> {
  const ProductDiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 312.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 14.h,
                        crossAxisSpacing: 14.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.productDiscoverModelObj.value
                        .listItemList.value.length,
                    itemBuilder: (context, index) {
                      ListItemModel model = controller.productDiscoverModelObj
                          .value.listItemList.value[index];
                      return ListItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_shopsie".tr),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}

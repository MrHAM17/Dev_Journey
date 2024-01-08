import '../category_comedy_screen/widgets/categorycomedy_item_widget.dart';
import 'controller/category_comedy_controller.dart';
import 'models/categorycomedy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class CategoryComedyScreen extends GetWidget<CategoryComedyController> {
  const CategoryComedyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 18.h, top: 25.v, right: 18.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 141.v,
                        crossAxisCount: 3,
                        mainAxisSpacing: 16.h,
                        crossAxisSpacing: 16.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.categoryComedyModelObj.value
                        .categorycomedyItemList.value.length,
                    itemBuilder: (context, index) {
                      CategorycomedyItemModel model = controller
                          .categoryComedyModelObj
                          .value
                          .categorycomedyItemList
                          .value[index];
                      return CategorycomedyItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_comedy".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

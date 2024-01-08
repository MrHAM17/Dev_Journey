import '../see_more_five_screen/widgets/seemorefive_item_widget.dart';
import 'controller/see_more_five_controller.dart';
import 'models/seemorefive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class SeeMoreFiveScreen extends GetWidget<SeeMoreFiveController> {
  const SeeMoreFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgHeroCarImage,
                              height: 220.v,
                              width: 360.h,
                              radius: BorderRadius.circular(2.h)),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_thriller".tr,
                                      style: theme.textTheme.headlineSmall))),
                          SizedBox(height: 20.v),
                          _buildSeeMoreFive()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_action".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildSeeMoreFive() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 165.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .seeMoreFiveModelObj.value.seemorefiveItemList.value.length,
            itemBuilder: (context, index) {
              SeemorefiveItemModel model = controller
                  .seeMoreFiveModelObj.value.seemorefiveItemList.value[index];
              return SeemorefiveItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

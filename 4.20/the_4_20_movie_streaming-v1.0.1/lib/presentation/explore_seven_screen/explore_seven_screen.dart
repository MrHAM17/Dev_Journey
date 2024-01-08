import '../explore_seven_screen/widgets/io_item_widget.dart';
import '../explore_seven_screen/widgets/specials6_item_widget.dart';
import '../explore_seven_screen/widgets/turnerhooch_item_widget.dart';
import 'controller/explore_seven_controller.dart';
import 'models/io_item_model.dart';
import 'models/specials6_item_model.dart';
import 'models/turnerhooch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class ExploreSevenScreen extends GetWidget<ExploreSevenController> {
  const ExploreSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 12.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("msg_categories_you_like".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 17.v),
                              _buildSpecials(),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.h, right: 16.h),
                                  child: _buildFrameSixty(
                                      action: "lbl_drama".tr,
                                      more: "lbl_more".tr)),
                              SizedBox(height: 17.v),
                              _buildIO(),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 20.h),
                                  child: _buildFrameSixty(
                                      action: "lbl_action".tr,
                                      more: "lbl_more".tr)),
                              SizedBox(height: 17.v),
                              _buildTurnerHooch()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildSpecials() {
    return SizedBox(
        height: 60.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 4.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .exploreSevenModelObj.value.specials6ItemList.value.length,
            itemBuilder: (context, index) {
              Specials6ItemModel model = controller
                  .exploreSevenModelObj.value.specials6ItemList.value[index];
              return Specials6ItemWidget(model, onTapImgDrama: () {
                onTapImgDrama();
              });
            })));
  }

  /// Section Widget
  Widget _buildIO() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 223.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                controller.exploreSevenModelObj.value.ioItemList.value.length,
            itemBuilder: (context, index) {
              IoItemModel model =
                  controller.exploreSevenModelObj.value.ioItemList.value[index];
              return IoItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildTurnerHooch() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 223.v,
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .exploreSevenModelObj.value.turnerhoochItemList.value.length,
        itemBuilder: (context, index) {
          TurnerhoochItemModel model = controller
              .exploreSevenModelObj.value.turnerhoochItemList.value[index];
          return TurnerhoochItemWidget(model, onTapMovieCard: () {
            onTapMovieCard();
          });
        }));
  }

  /// Common widget
  Widget _buildFrameSixty({
    required String action,
    required String more,
  }) {
    return Row(children: [
      Text(action,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.whiteA700)),
      Spacer(),
      Text(more,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgIconPrimary,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the seeMoreFiveScreen when the action is triggered.
  onTapImgDrama() {
    Get.toNamed(
      AppRoutes.seeMoreFiveScreen,
    );
  }
}

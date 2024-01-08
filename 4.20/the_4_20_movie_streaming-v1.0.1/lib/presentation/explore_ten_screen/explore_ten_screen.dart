import '../explore_ten_screen/widgets/trending1_item_widget.dart';
import '../explore_ten_screen/widgets/trending2_item_widget.dart';
import '../explore_ten_screen/widgets/trending_item_widget.dart';
import 'controller/explore_ten_controller.dart';
import 'models/trending1_item_model.dart';
import 'models/trending2_item_model.dart';
import 'models/trending_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class ExploreTenScreen extends GetWidget<ExploreTenController> {
  const ExploreTenScreen({Key? key}) : super(key: key);

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
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_trending_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA700)),
                              SizedBox(height: 16.v),
                              _buildTrending(),
                              SizedBox(height: 26.v),
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_trending_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA700)),
                              SizedBox(height: 16.v),
                              _buildTrending1(),
                              SizedBox(height: 26.v),
                              Opacity(
                                  opacity: 0.87,
                                  child: Text("lbl_trending_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallWhiteA700)),
                              SizedBox(height: 16.v),
                              _buildTrending2()
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
  Widget _buildTrending() {
    return SizedBox(
        height: 207.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .exploreTenModelObj.value.trendingItemList.value.length,
            itemBuilder: (context, index) {
              TrendingItemModel model = controller
                  .exploreTenModelObj.value.trendingItemList.value[index];
              return TrendingItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildTrending1() {
    return SizedBox(
        height: 207.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .exploreTenModelObj.value.trending1ItemList.value.length,
            itemBuilder: (context, index) {
              Trending1ItemModel model = controller
                  .exploreTenModelObj.value.trending1ItemList.value[index];
              return Trending1ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildTrending2() {
    return SizedBox(
        height: 207.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .exploreTenModelObj.value.trending2ItemList.value.length,
            itemBuilder: (context, index) {
              Trending2ItemModel model = controller
                  .exploreTenModelObj.value.trending2ItemList.value[index];
              return Trending2ItemWidget(model, onTapMovieCard: () {
                onTapMovieCard();
              });
            })));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard() {
    Get.toNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}

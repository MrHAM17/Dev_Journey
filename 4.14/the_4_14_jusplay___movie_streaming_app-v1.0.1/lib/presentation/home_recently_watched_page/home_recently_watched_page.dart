import '../home_recently_watched_page/widgets/frame1_item_widget.dart';
import '../home_recently_watched_page/widgets/frame2_item_widget.dart';
import '../home_recently_watched_page/widgets/widget1_item_widget.dart';
import 'controller/home_recently_watched_controller.dart';
import 'models/frame1_item_model.dart';
import 'models/frame2_item_model.dart';
import 'models/home_recently_watched_model.dart';
import 'models/widget1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

class HomeRecentlyWatchedPage extends StatelessWidget {
  HomeRecentlyWatchedPage({Key? key})
      : super(
          key: key,
        );

  HomeRecentlyWatchedController controller =
      Get.put(HomeRecentlyWatchedController(HomeRecentlyWatchedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.bg,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildWidget(),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_last_watched".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                _buildFrame(),
                SizedBox(height: 25.v),
                _buildCatagories(),
                SizedBox(height: 26.v),
                _buildFrame1(),
                SizedBox(height: 9.v),
                _buildFrame2(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget() {
    return SizedBox(
      height: 296.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 296.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount: controller.homeRecentlyWatchedModelObj.value
                  .widget1ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Widget1ItemModel model = controller.homeRecentlyWatchedModelObj
                    .value.widget1ItemList.value[index];
                return Widget1ItemWidget(
                  model,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Obx(
              () => SizedBox(
                height: 296.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.homeRecentlyWatchedModelObj.value
                      .widget1ItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 7.05,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.gray3008d,
                    dotHeight: 5.v,
                    dotWidth: 4.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return SizedBox(
      height: 166.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller
              .homeRecentlyWatchedModelObj.value.frame1ItemList.value.length,
          itemBuilder: (context, index) {
            Frame1ItemModel model = controller
                .homeRecentlyWatchedModelObj.value.frame1ItemList.value[index];
            return Frame1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEight() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_catagories".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.style.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Text(
                  "lbl_all".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.cardBg.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Text(
                  "lbl_action".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.cardBg.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Text(
                  "lbl_comedy".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.cardBg.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Text(
                  "lbl_romance".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCatagories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNinetyEight(),
            Container(
              width: 82.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 34.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.cardBg.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Text(
                "lbl_horor".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_most_popular".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "lbl_see_all".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2() {
    return SizedBox(
      height: 178.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller
              .homeRecentlyWatchedModelObj.value.frame2ItemList.value.length,
          itemBuilder: (context, index) {
            Frame2ItemModel model = controller
                .homeRecentlyWatchedModelObj.value.frame2ItemList.value[index];
            return Frame2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

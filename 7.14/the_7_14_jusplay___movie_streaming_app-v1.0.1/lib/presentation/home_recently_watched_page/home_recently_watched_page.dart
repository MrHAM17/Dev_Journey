import '../home_recently_watched_page/widgets/frame1_item_widget.dart';
import '../home_recently_watched_page/widgets/frame2_item_widget.dart';
import '../home_recently_watched_page/widgets/widget1_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeRecentlyWatchedPage extends StatelessWidget {
  HomeRecentlyWatchedPage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

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
                _buildWidget(context),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "Last watched",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                _buildFrame(context),
                SizedBox(height: 25.v),
                _buildCatagories(context),
                SizedBox(height: 26.v),
                _buildFrame1(context),
                SizedBox(height: 9.v),
                _buildFrame2(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return SizedBox(
      height: 296.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
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
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return Widget1ItemWidget();
            },
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 296.v,
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 1,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 166.v,
      child: ListView.separated(
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
        itemCount: 2,
        itemBuilder: (context, index) {
          return Frame1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Catagories",
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
                  "All",
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
                  "Action",
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
                  "Comedy",
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
                  "Romance",
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
  Widget _buildCatagories(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNinetyEight(context),
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
                "Horor",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Most Popular",
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "See all",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return SizedBox(
      height: 178.v,
      child: ListView.separated(
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
        itemCount: 3,
        itemBuilder: (context, index) {
          return Frame2ItemWidget();
        },
      ),
    );
  }
}

import '../explore_eight_page/widgets/exploreeight_item_widget.dart';
import '../explore_eight_page/widgets/specials7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class ExploreEightPage extends StatelessWidget {
  const ExploreEightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Categories You Like",
                                  style: theme.textTheme.titleSmall)),
                          SizedBox(height: 17.v),
                          _buildSpecials(context),
                          SizedBox(height: 26.v),
                          _buildFrameSeventy(context),
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: _buildFrameSixty(context,
                                  action: "Drama", more: "More")),
                          SizedBox(height: 17.v),
                          _buildExploreEight(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title:
            AppbarTitle(text: "Explore", margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildSpecials(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return Specials7ItemWidget(onTapImgDrama: () {
                onTapImgDrama(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildFrameSeventy(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildFrameSixty(context, action: "Best Movie", more: "More")),
      SizedBox(height: 20.v),
      SizedBox(
          height: 300.v,
          width: 328.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            CustomImageView(
                imagePath: ImageConstant.imgHeroCardImage300x328,
                height: 300.v,
                width: 328.h,
                alignment: Alignment.center),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 16.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MOONLIGHT",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 9.v),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("Sub Label",
                                    style:
                                        CustomTextStyles.bodySmallWhiteA700_1)),
                            Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 8.h, top: 6.v, bottom: 6.v),
                                decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(1.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("(4.5)",
                                    style:
                                        CustomTextStyles.bodySmallWhiteA700_1)),
                            CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 3.h, top: 3.v, bottom: 4.v))
                          ])
                        ])))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildExploreEight(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 223.v,
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return ExploreeightItemWidget(onTapMovieCard: () {
            onTapMovieCard(context);
          });
        });
  }

  /// Common widget
  Widget _buildFrameSixty(
    BuildContext context, {
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

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seeMoreSixScreen);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }
}

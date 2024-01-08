import '../detail_page_twelve_screen/widgets/movies4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_elevated_button.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_icon_button.dart';

class DetailPageTwelveScreen extends StatelessWidget {
  const DetailPageTwelveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildVedioPlay(context),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Details",
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 11.v),
                              Container(
                                  width: 315.h,
                                  margin:
                                      EdgeInsets.only(left: 16.h, right: 28.h),
                                  child: Text(
                                      "Fertility and desolation, creation and destruction, isolation and togetherness all intermingle in hypnotic fashion in High Life, Claire Denis’ sci-fi reverie. Indebted, spiritually if not narratively, to Andrei Tarkovsky’s Solaris, Denis’ story concerns a space ship on which a doctor (Juliette Binoche) attempts to successfully conceive children through experiments with convicts – including Monte (Robert Pattinson).",
                                      maxLines: 8,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Director",
                                            style: theme.textTheme.bodySmall)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 43.h),
                                        child: Text("Anna Boden, Ryan Fleck",
                                            style: CustomTextStyles
                                                .bodySmallGray300))
                                  ])),
                              SizedBox(height: 9.v),
                              _buildFrameFortySix(context),
                              SizedBox(height: 15.v),
                              Divider(),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("You Might Also Like",
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildMovies(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildVedioPlay(BuildContext context) {
    return SizedBox(
        height: 220.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbnailImage220x360,
              height: 220.v,
              width: 360.h,
              radius: BorderRadius.circular(2.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                  decoration: AppDecoration.gradientGrayToGray,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 79.v),
                        Text("Captain Marvel",
                            style: CustomTextStyles.titleMediumWhiteA700),
                        SizedBox(height: 13.v),
                        Row(children: [
                          Text("2019", style: theme.textTheme.bodySmall),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("Action",
                                  style: theme.textTheme.bodySmall)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 1.v),
                              child: Text("(4.5)",
                                  style: theme.textTheme.bodySmall)),
                          CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 4.v, bottom: 4.v)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("1 hr 49min",
                                  style: theme.textTheme.bodySmall))
                        ]),
                        SizedBox(height: 12.v),
                        Row(children: [
                          CustomElevatedButton(
                              width: 124.h,
                              text: "Watch Now",
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 4.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgIconOnprimarycontainer16x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize)),
                              onPressed: () {
                                onTapWatchNow(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomIconButton(
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSearchWhiteA700)))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 42.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 20.v),
              child: Text("Cast", style: theme.textTheme.bodySmall)),
          Expanded(
              child: Container(
                  width: 215.h,
                  margin: EdgeInsets.only(left: 61.h),
                  child: Text(
                      "Brie Larson, Samuel L Jakson, Jude Law, Gemma Chan",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray300
                          .copyWith(height: 1.50))))
        ]));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 243.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Movies4ItemWidget(onTapMovieCard: () {
                onTapMovieCard(context);
              });
            }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  onTapWatchNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.channelFourScreen);
  }
}

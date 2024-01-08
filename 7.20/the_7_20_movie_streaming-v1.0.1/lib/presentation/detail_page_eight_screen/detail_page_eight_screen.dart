import '../detail_page_eight_screen/widgets/movies5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_elevated_button.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_icon_button.dart';

class DetailPageEightScreen extends StatelessWidget {
  const DetailPageEightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildOne(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgThumbnailImage28,
                                              height: 140.v,
                                              width: 90.h,
                                              radius:
                                                  BorderRadius.circular(2.h),
                                              margin:
                                                  EdgeInsets.only(left: 119.h),
                                              onTap: () {
                                                onTapImgThumbnailImage(context);
                                              }),
                                          SizedBox(height: 24.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 42.h, right: 56.h),
                                              child: Row(children: [
                                                CustomElevatedButton(
                                                    width: 111.h,
                                                    text: "Play Now",
                                                    leftIcon: Container(
                                                        margin: EdgeInsets.only(
                                                            right: 4.h),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIconOnprimarycontainer16x16,
                                                            height:
                                                                16.adaptSize,
                                                            width:
                                                                16.adaptSize)),
                                                    onPressed: () {
                                                      onTapPlayNow(context);
                                                    }),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: CustomIconButton(
                                                        height: 36.adaptSize,
                                                        width: 36.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            10.h),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgSearchWhiteA700))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: CustomIconButton(
                                                        height: 36.adaptSize,
                                                        width: 36.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            10.h),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIconWhiteA700))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: CustomIconButton(
                                                        height: 36.adaptSize,
                                                        width: 36.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            10.h),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIconWhiteA70036x36)))
                                              ])),
                                          SizedBox(height: 28.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 82.h),
                                              child: Text("Captain Marvel",
                                                  style: theme.textTheme
                                                      .headlineSmall)),
                                          SizedBox(height: 7.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 96.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("2019",
                                                        style: theme.textTheme
                                                            .bodySmall),
                                                    Container(
                                                        height: 3.adaptSize,
                                                        width: 3.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 8.h,
                                                            top: 6.v,
                                                            bottom: 6.v),
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.h))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text("Action",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Container(
                                                        height: 3.adaptSize,
                                                        width: 3.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 8.h,
                                                            top: 6.v,
                                                            bottom: 6.v),
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.h))),
                                                    Container(
                                                        width: 36.h,
                                                        margin: EdgeInsets.only(
                                                            left: 8.h),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("(4.5)",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgSignal,
                                                                  height: 8
                                                                      .adaptSize,
                                                                  width: 8
                                                                      .adaptSize,
                                                                  margin: EdgeInsets.only(
                                                                      left: 3.h,
                                                                      top: 2.v,
                                                                      bottom:
                                                                          4.v))
                                                            ]))
                                                  ])),
                                          SizedBox(height: 5.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 135.h),
                                              child: Text("1 hr 49min",
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          SizedBox(height: 27.v),
                                          SizedBox(
                                              width: 325.h,
                                              child: ReadMoreText(
                                                  "Set in the 1990s, Marvel Studios’ Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Univer follo… ",
                                                  trimLines: 3,
                                                  colorClickableText:
                                                      theme.colorScheme.primary,
                                                  trimMode: TrimMode.Line,
                                                  trimCollapsedText:
                                                      "Read More ",
                                                  moreStyle: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(height: 1.50),
                                                  lessStyle: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(height: 1.50))),
                                          SizedBox(height: 21.v),
                                          Text("More Info",
                                              style:
                                                  theme.textTheme.titleSmall),
                                          SizedBox(height: 15.v),
                                          Row(children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("Director",
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 43.h),
                                                child: Text(
                                                    "Anna Boden, Ryan Fleck",
                                                    style: CustomTextStyles
                                                        .bodySmallGray300))
                                          ]),
                                          SizedBox(height: 9.v),
                                          _buildFrameFortySix(context),
                                          SizedBox(height: 23.v),
                                          Divider(endIndent: 14.h)
                                        ])),
                                SizedBox(height: 26.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("You Might Also Like",
                                        style: CustomTextStyles
                                            .titleSmallSemiBold)),
                                SizedBox(height: 17.v),
                                _buildMovies(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SizedBox(
        height: 188.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBackgroundBlur,
              height: 188.v,
              width: 360.h,
              radius: BorderRadius.circular(2.h),
              alignment: Alignment.center),
          CustomAppBar(
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
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 40.h),
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
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Movies5ItemWidget(onTapMovieCard: () {
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

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapImgThumbnailImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  onTapPlayNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.channelFourScreen);
  }
}

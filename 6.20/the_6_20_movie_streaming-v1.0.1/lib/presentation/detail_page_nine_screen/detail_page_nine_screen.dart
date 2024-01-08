import '../detail_page_nine_screen/widgets/framefiftythree_item_widget.dart';
import '../detail_page_nine_screen/widgets/movies1_item_widget.dart';
import 'models/framefiftythree_item_model.dart';
import 'models/movies1_item_model.dart';
import 'notifier/detail_page_nine_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class DetailPageNineScreen extends ConsumerStatefulWidget {
  const DetailPageNineScreen({Key? key}) : super(key: key);

  @override
  DetailPageNineScreenState createState() => DetailPageNineScreenState();
}

class DetailPageNineScreenState extends ConsumerState<DetailPageNineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 94.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgThumbnailImage28,
                                        height: 140.v,
                                        width: 90.h,
                                        radius: BorderRadius.circular(2.h),
                                        onTap: () {
                                          onTapImgThumbnailImage(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h,
                                            top: 38.v,
                                            bottom: 36.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_captain_marvel".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumWhiteA700),
                                              SizedBox(height: 6.v),
                                              SizedBox(
                                                  width: 136.h,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_2019".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                        Container(
                                                            height: 3.adaptSize,
                                                            width: 3.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.h))),
                                                        Text("lbl_action".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                        Container(
                                                            height: 3.adaptSize,
                                                            width: 3.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.h))),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("lbl_4_5".tr,
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
                                                            ])
                                                      ])),
                                              SizedBox(height: 5.v),
                                              Text("lbl_1_hr_49min".tr,
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ]))
                                  ])),
                              SizedBox(height: 24.v),
                              _buildFrameFiftyThree(context),
                              SizedBox(height: 25.v),
                              Container(
                                  width: 325.h,
                                  margin: EdgeInsets.only(right: 18.h),
                                  child: Text("msg_set_in_the_1990s2".tr,
                                      maxLines: 7,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 26.v),
                              Text("msg_you_might_also_like".tr,
                                  style: CustomTextStyles.titleSmallSemiBold),
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
  Widget _buildFrameFiftyThree(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
              ref
                      .watch(detailPageNineNotifier)
                      .detailPageNineModelObj
                      ?.framefiftythreeItemList
                      .length ??
                  0, (index) {
            FramefiftythreeItemModel model = ref
                    .watch(detailPageNineNotifier)
                    .detailPageNineModelObj
                    ?.framefiftythreeItemList[index] ??
                FramefiftythreeItemModel();
            return FramefiftythreeItemWidget(model,
                onSelectedChipView1: (value) {
              ref
                  .read(detailPageNineNotifier.notifier)
                  .onSelectedChipView1(index, value);
            });
          }));
    });
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 243.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(detailPageNineNotifier)
                      .detailPageNineModelObj
                      ?.movies1ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Movies1ItemModel model = ref
                        .watch(detailPageNineNotifier)
                        .detailPageNineModelObj
                        ?.movies1ItemList[index] ??
                    Movies1ItemModel();
                return Movies1ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapImgThumbnailImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}

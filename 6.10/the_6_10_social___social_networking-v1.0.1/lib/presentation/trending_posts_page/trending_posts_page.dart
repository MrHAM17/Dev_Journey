import 'notifier/trending_posts_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/custom_icon_button.dart';

class TrendingPostsPage extends ConsumerStatefulWidget {
  const TrendingPostsPage({Key? key}) : super(key: key);

  @override
  TrendingPostsPageState createState() => TrendingPostsPageState();
}

class TrendingPostsPageState extends ConsumerState<TrendingPostsPage>
    with AutomaticKeepAliveClientMixin<TrendingPostsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildEightySix(context),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Column(children: [
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.v),
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: _buildFrame(context,
                                                    rizalReynaldhi:
                                                        "lbl_rizal_reynaldhi"
                                                            .tr,
                                                    duration:
                                                        "lbl_35_minutes_ago"
                                                            .tr)),
                                            SizedBox(height: 8.v),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.img32116x183,
                                                height: 116.v,
                                                width: 183.h),
                                            SizedBox(height: 9.v),
                                            Container(
                                                width: 141.h,
                                                margin:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Text(
                                                    "msg_vacation_to_bali".tr,
                                                    maxLines: 6,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            height: 1.50))),
                                            SizedBox(height: 17.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: _buildBali(context,
                                                    bali: "lbl_bali".tr,
                                                    dreams: "lbl_dreams".tr)),
                                            SizedBox(height: 16.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: _buildFavorite(context,
                                                    zipcode: "lbl_2200".tr,
                                                    eightHundred: "lbl_800".tr))
                                          ])),
                                  SizedBox(height: 16.v),
                                  _buildPostItem(context,
                                      rizalReynaldhi: "lbl_rizal_reynaldhi".tr,
                                      duration: "lbl_35_minutes_ago".tr,
                                      description: "msg_vacation_to_bali".tr,
                                      bali: "lbl_bali".tr,
                                      dreams: "lbl_dreams".tr,
                                      zipcode: "lbl_2200".tr,
                                      eightHundred: "lbl_800".tr)
                                ]))
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return Column(children: [
      _buildPostItem(context,
          rizalReynaldhi: "lbl_rizal_reynaldhi".tr,
          duration: "lbl_35_minutes_ago".tr,
          description: "msg_vacation_to_bali".tr,
          bali: "lbl_bali".tr,
          dreams: "lbl_dreams".tr,
          zipcode: "lbl_2200".tr,
          eightHundred: "lbl_800".tr),
      SizedBox(height: 16.v),
      Container(
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: AppDecoration.outlineBlack
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildFrame(context,
                        rizalReynaldhi: "lbl_rizal_reynaldhi".tr,
                        duration: "lbl_35_minutes_ago".tr)),
                SizedBox(height: 8.v),
                SizedBox(
                    height: 116.v,
                    width: 183.h,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.img32,
                          height: 116.v,
                          width: 183.h,
                          alignment: Alignment.center),
                      CustomIconButton(
                          height: 42.v,
                          width: 41.h,
                          alignment: Alignment.center,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgOverflowMenu))
                    ])),
                SizedBox(height: 9.v),
                Container(
                    width: 141.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: Text("msg_vacation_to_bali".tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.bodySmall!.copyWith(height: 1.50))),
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildBali(context,
                        bali: "lbl_bali".tr, dreams: "lbl_dreams".tr)),
                SizedBox(height: 16.v),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildFavorite(context,
                        zipcode: "lbl_2200".tr, eightHundred: "lbl_800".tr))
              ]))
    ]);
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String rizalReynaldhi,
    required String duration,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse2135x35,
          height: 35.adaptSize,
          width: 35.adaptSize,
          radius: BorderRadius.circular(17.h)),
      Padding(
          padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(rizalReynaldhi,
                style: CustomTextStyles.labelLargePrimary
                    .copyWith(color: theme.colorScheme.primary)),
            SizedBox(height: 2.v),
            Text(duration,
                style: CustomTextStyles.labelMediumBluegray100
                    .copyWith(color: appTheme.blueGray100))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildBali(
    BuildContext context, {
    required String bali,
    required String dreams,
  }) {
    return Row(children: [
      Text(bali,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.primary)),
      Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(dreams,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildFavorite(
    BuildContext context, {
    required String zipcode,
    required String eightHundred,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 17.v,
          width: 19.h,
          margin: EdgeInsets.only(top: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 1.v),
          child: Text(zipcode,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.primary))),
      CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 18.v,
          width: 19.h,
          margin: EdgeInsets.only(left: 29.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 3.v),
          child: Text(eightHundred,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildPostItem(
    BuildContext context, {
    required String rizalReynaldhi,
    required String duration,
    required String description,
    required String bali,
    required String dreams,
    required String zipcode,
    required String eightHundred,
  }) {
    return Container(
        width: 183.h,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse2135x35,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    radius: BorderRadius.circular(17.h)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(rizalReynaldhi,
                              style: CustomTextStyles.labelLargePrimary
                                  .copyWith(color: theme.colorScheme.primary)),
                          SizedBox(height: 2.v),
                          Text(duration,
                              style: CustomTextStyles.labelMediumBluegray100
                                  .copyWith(color: appTheme.blueGray100))
                        ]))
              ]),
              SizedBox(height: 9.v),
              SizedBox(
                  width: 141.h,
                  child: Text(description,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.primary, height: 1.50))),
              SizedBox(height: 13.v),
              Row(children: [
                Text(bali,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.colorScheme.primary)),
                Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(dreams,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: theme.colorScheme.primary)))
              ]),
              SizedBox(height: 16.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 1.v),
                    child: Text(zipcode,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: theme.colorScheme.primary))),
                CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.v,
                    width: 19.h,
                    margin: EdgeInsets.only(left: 29.h)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 3.v),
                    child: Text(eightHundred,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: theme.colorScheme.primary)))
              ])
            ]));
  }
}

import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_rating_bar.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  ReviewsPageState createState() => ReviewsPageState();
}

class ReviewsPageState extends State<ReviewsPage>
    with AutomaticKeepAliveClientMixin<ReviewsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        _buildFrame(context),
                        SizedBox(height: 23.v),
                        _buildFrame1(context),
                        SizedBox(height: 14.v),
                        _buildFrame2(context),
                        SizedBox(height: 41.v),
                        CustomElevatedButton(
                            text: "Write a Review",
                            onPressed: () {
                              onTapWriteAReview(context);
                            })
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(children: [
      Text("4.8", style: CustomTextStyles.headlineMediumBold),
      SizedBox(height: 11.v),
      CustomRatingBar(
          initialRating: 4, itemSize: 20, color: appTheme.amber50001),
      SizedBox(height: 11.v),
      Text("Based on 1,024 reviews",
          style: CustomTextStyles.bodyMediumGray500_1),
      SizedBox(height: 11.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Excellent", style: CustomTextStyles.bodyMediumGray500_1),
        Padding(
            padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
            child: Container(
                height: 4.v,
                width: 196.h,
                decoration: BoxDecoration(
                    color: appTheme.gray200,
                    borderRadius: BorderRadius.circular(2.h)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.h),
                    child: LinearProgressIndicator(
                        value: 0.93,
                        backgroundColor: appTheme.gray200,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            theme.colorScheme.secondaryContainer)))))
      ]),
      SizedBox(height: 6.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Good", style: CustomTextStyles.bodyMediumGray500_1),
        Padding(
            padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
            child: Container(
                height: 4.v,
                width: 196.h,
                decoration: BoxDecoration(
                    color: appTheme.gray200,
                    borderRadius: BorderRadius.circular(2.h)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.h),
                    child: LinearProgressIndicator(
                        value: 0.32,
                        backgroundColor: appTheme.gray200,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(appTheme.green500)))))
      ]),
      SizedBox(height: 8.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Average", style: CustomTextStyles.bodyMediumGray500_1),
            Padding(
                padding: EdgeInsets.only(top: 6.v, bottom: 10.v),
                child: Container(
                    height: 4.v,
                    width: 196.h,
                    decoration: BoxDecoration(
                        color: appTheme.gray200,
                        borderRadius: BorderRadius.circular(2.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.h),
                        child: LinearProgressIndicator(
                            value: 0.17,
                            backgroundColor: appTheme.gray200,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.amber400)))))
          ]),
      SizedBox(height: 5.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bellow Average", style: CustomTextStyles.bodyMediumGray500_1),
            Padding(
                padding: EdgeInsets.only(top: 7.v, bottom: 9.v),
                child: Container(
                    height: 4.v,
                    width: 196.h,
                    decoration: BoxDecoration(
                        color: appTheme.gray200,
                        borderRadius: BorderRadius.circular(2.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.h),
                        child: LinearProgressIndicator(
                            value: 0.09,
                            backgroundColor: appTheme.gray200,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.orange700)))))
          ]),
      SizedBox(height: 4.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Poor", style: CustomTextStyles.bodyMediumGray500_1),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Container(
                height: 4.v,
                width: 196.h,
                decoration: BoxDecoration(
                    color: appTheme.gray200,
                    borderRadius: BorderRadius.circular(2.h)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.h),
                    child: LinearProgressIndicator(
                        value: 0.04,
                        backgroundColor: appTheme.gray200,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(appTheme.redA400)))))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse533x33,
              height: 33.adaptSize,
              width: 33.adaptSize,
              radius: BorderRadius.circular(16.h),
              margin: EdgeInsets.only(top: 1.v, bottom: 75.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ariana Peter",
                                style: theme.textTheme.bodyMedium),
                            CustomRatingBar(
                                initialRating: 4,
                                itemSize: 14,
                                color: appTheme.amber50001)
                          ]),
                      Padding(
                          padding: EdgeInsets.only(top: 9.v, bottom: 4.v),
                          child: Text("1 Day ago",
                              style: CustomTextStyles.bodyMediumGray500_1))
                    ]),
                SizedBox(height: 10.v),
                Container(
                    width: 295.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray500_1
                            .copyWith(height: 1.50)))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse533x33,
              height: 33.adaptSize,
              width: 33.adaptSize,
              radius: BorderRadius.circular(16.h),
              margin: EdgeInsets.only(top: 1.v, bottom: 75.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ariana Peter",
                                style: theme.textTheme.bodyMedium),
                            CustomRatingBar(
                                initialRating: 4,
                                itemSize: 14,
                                color: appTheme.amber50001)
                          ]),
                      Padding(
                          padding: EdgeInsets.only(top: 9.v, bottom: 4.v),
                          child: Text("1 Day ago",
                              style: CustomTextStyles.bodyMediumGray500_1))
                    ]),
                SizedBox(height: 10.v),
                Container(
                    width: 295.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray500_1
                            .copyWith(height: 1.50)))
              ]))
        ]);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapWriteAReview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}

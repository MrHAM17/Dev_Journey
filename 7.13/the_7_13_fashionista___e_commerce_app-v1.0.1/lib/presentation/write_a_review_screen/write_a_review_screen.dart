import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:the_7_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_13_fashionista___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WriteAReviewScreen extends StatelessWidget {
  WriteAReviewScreen({Key? key}) : super(key: key);

  TextEditingController inputFieldsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 84.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgUnsplash8hqpxttomn0135x142,
                                height: 135.v,
                                width: 142.h,
                                radius: BorderRadius.circular(20.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 11.v, bottom: 11.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Jacket",
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      Text("Black Jacket",
                                          style: theme.textTheme.bodyLarge),
                                      SizedBox(height: 3.v),
                                      Text("Size: XL",
                                          style: CustomTextStyles
                                              .bodyMediumGray500_1),
                                      SizedBox(height: 4.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "",
                                                style: CustomTextStyles
                                                    .titleMediumLime900SemiBold),
                                            TextSpan(
                                                text: " 134.98",
                                                style: CustomTextStyles
                                                    .titleMediumSemiBold_2)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]))
                          ]))),
                  SizedBox(height: 23.v),
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildTwentyEight(context),
                  SizedBox(height: 9.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("350 characters remaining",
                          style: CustomTextStyles.bodyMediumGray500_1)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPostReview(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Write a Review"));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Add Photo or Video", style: theme.textTheme.titleMedium),
      SizedBox(height: 13.v),
      DottedBorder(
          color: appTheme.gray200,
          padding:
              EdgeInsets.only(left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
          strokeWidth: 2.h,
          radius: Radius.circular(16),
          borderType: BorderType.RRect,
          dashPattern: [6, 6],
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 99.h, vertical: 21.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgCloudUpload,
                        height: 50.adaptSize,
                        width: 50.adaptSize),
                    SizedBox(height: 13.v),
                    Text("Click here to upload",
                        style: CustomTextStyles.bodyMediumGray500_1)
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Write yor Review", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: inputFieldsController,
          hintText: "Would you like to write anything about?",
          hintStyle: CustomTextStyles.bodyMediumGray500_1,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Section Widget
  Widget _buildPostReview(BuildContext context) {
    return CustomElevatedButton(
        text: "Post Review",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v),
        onPressed: () {
          onTapPostReview(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the reviewsTabContainerScreen when the action is triggered.
  onTapPostReview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewsTabContainerScreen);
  }
}

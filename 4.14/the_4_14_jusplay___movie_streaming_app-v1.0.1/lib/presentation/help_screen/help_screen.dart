import 'controller/help_controller.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/custom_search_view.dart';

class HelpScreen extends GetWidget<HelpController> {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child:
                    Column(children: [_buildArrowLeft(), _buildTopAnswer()]))));
  }

  /// Section Widget
  Widget _buildArrowLeft() {
    return SizedBox(
        height: 128.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup427318996,
              height: 128.v,
              width: 375.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 7.v, right: 16.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        height: 35.v,
                        leadingWidth: 51.h,
                        leading: AppbarLeadingIconbutton(
                            imagePath: ImageConstant.imgArrowLeft,
                            margin: EdgeInsets.only(left: 16.h),
                            onTap: () {
                              onTapArrowLeft();
                            }),
                        centerTitle: true,
                        title: AppbarTitle(text: "lbl_help".tr)),
                    SizedBox(height: 24.v),
                    CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_get_help".tr)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTopAnswer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_top_answers".tr,
              style: CustomTextStyles.titleMediumSemiBold),
          SizedBox(height: 13.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 27.v),
              decoration: AppDecoration.cardBg
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildHowToUnsubscribe(
                        howToUnsubscribe: "msg_how_to_contact_customer".tr),
                    SizedBox(height: 14.v),
                    Divider(),
                    SizedBox(height: 23.v),
                    _buildHowToUnsubscribe(
                        howToUnsubscribe: "msg_how_to_unsubscribe".tr),
                    SizedBox(height: 25.v),
                    Divider(),
                    SizedBox(height: 23.v),
                    _buildHowToUnsubscribe(
                        howToUnsubscribe: "msg_how_to_subscribe".tr),
                    SizedBox(height: 25.v),
                    Divider(),
                    SizedBox(height: 23.v),
                    _buildHowToUnsubscribe(
                        howToUnsubscribe: "msg_can_t_watch_movistart".tr),
                    SizedBox(height: 25.v),
                    Divider(),
                    SizedBox(height: 23.v),
                    _buildHowToUnsubscribe(
                        howToUnsubscribe: "msg_what_is_movistart".tr),
                    SizedBox(height: 25.v),
                    Divider()
                  ])),
          SizedBox(height: 5.v)
        ]));
  }

  /// Common widget
  Widget _buildHowToUnsubscribe({required String howToUnsubscribe}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(howToUnsubscribe,
          style:
              theme.textTheme.labelLarge!.copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 72.h))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

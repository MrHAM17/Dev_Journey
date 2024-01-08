import '../message_page/widgets/message_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_item_model.dart';
import 'models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  MessageController controller = Get.put(MessageController(MessageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  SizedBox(height: 4.v),
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search_message".tr),
                  SizedBox(height: 24.v),
                  _buildDot(),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAvatar(),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildMessage(),
                  Spacer(),
                  CustomElevatedButton(
                      height: 46.v,
                      width: 137.h,
                      text: "lbl_new_chat".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgPlusOnprimarycontainer,
                              height: 18.adaptSize,
                              width: 18.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
                      alignment: Alignment.centerRight)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapImage();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_message".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildDot() {
    return GestureDetector(
        onTap: () {
          onTapDot();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 56.adaptSize,
              width: 56.adaptSize,
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage56x56,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(28.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.green600,
                            borderRadius: BorderRadius.circular(8.h),
                            border: Border.all(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                width: 1.h))))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 3.v),
              child: _buildNameDescription(
                  wadeWarren: "lbl_esther_howard".tr,
                  loremIpsumDolor: "msg_lorem_ipsum_dolor4".tr)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: _buildTime(time: "lbl_10_20".tr, widget: "lbl_2".tr))
        ]));
  }

  /// Section Widget
  Widget _buildAvatar() {
    return GestureDetector(
        onTap: () {
          onTapAvatar();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(28.h)),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 3.v),
              child: _buildNameDescription(
                  wadeWarren: "lbl_wade_warren".tr,
                  loremIpsumDolor: "msg_lorem_ipsum_dolor4".tr)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: _buildTime(time: "lbl_10_20".tr, widget: "lbl_2".tr))
        ]));
  }

  /// Section Widget
  Widget _buildMessage() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.5.v),
              child: SizedBox(
                  width: 327.h,
                  child: Divider(
                      height: 1.v, thickness: 1.v, color: appTheme.gray300)));
        },
        itemCount:
            controller.messageModelObj.value.messageItemList.value.length,
        itemBuilder: (context, index) {
          MessageItemModel model =
              controller.messageModelObj.value.messageItemList.value[index];
          return MessageItemWidget(model);
        }));
  }

  /// Common widget
  Widget _buildNameDescription({
    required String wadeWarren,
    required String loremIpsumDolor,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(wadeWarren,
          style: CustomTextStyles.titleMediumBold
              .copyWith(color: theme.colorScheme.primary)),
      SizedBox(height: 9.v),
      Text(loremIpsumDolor,
          style: CustomTextStyles.titleSmallBluegray400
              .copyWith(color: appTheme.blueGray400))
    ]);
  }

  /// Common widget
  Widget _buildTime({
    required String time,
    required String widget,
  }) {
    return Column(children: [
      Text(time,
          style: CustomTextStyles.labelLargeSemiBold
              .copyWith(color: appTheme.blueGray400)),
      SizedBox(height: 6.v),
      Align(
          alignment: Alignment.centerRight,
          child: Container(
              width: 24.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
              child: Text(widget,
                  style: theme.textTheme.labelMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImage() {
    Get.back();
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapDot() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapAvatar() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}

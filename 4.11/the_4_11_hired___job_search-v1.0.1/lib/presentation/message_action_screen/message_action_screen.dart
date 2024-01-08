import '../message_action_screen/widgets/messageaction_item_widget.dart';
import 'controller/message_action_controller.dart';
import 'models/messageaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/home_page/home_page.dart';
import 'package:the_4_11_hired___job_search/presentation/message_page/message_page.dart';
import 'package:the_4_11_hired___job_search/presentation/profile_page/profile_page.dart';
import 'package:the_4_11_hired___job_search/presentation/saved_page/saved_page.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_bottom_bar.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_search_view.dart';

class MessageActionScreen extends GetWidget<MessageActionController> {
  const MessageActionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search_message".tr)),
                  SizedBox(height: 24.v),
                  _buildMessageAction(),
                  Spacer(),
                  CustomElevatedButton(
                      height: 46.v,
                      width: 137.h,
                      text: "lbl_new_chat".tr,
                      margin: EdgeInsets.only(right: 24.h),
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
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 97.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapImage();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_message".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildMessageAction() {
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
        itemCount: controller
            .messageActionModelObj.value.messageactionItemList.value.length,
        itemBuilder: (context, index) {
          MessageactionItemModel model = controller
              .messageActionModelObj.value.messageactionItemList.value[index];
          return MessageactionItemWidget(model, onTapEstherHoward: () {
            onTapEstherHoward();
          });
        }));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapEstherHoward() {
    Get.toNamed(AppRoutes.chatScreen);
  }

  /// Navigates to the previous screen.
  onTapImage() {
    Get.back();
  }
}

import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_4_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Opacity(
                          opacity: 0.1,
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.0.v),
                              child: SizedBox(
                                  width: 335.h,
                                  child: Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: appTheme.black900
                                          .withOpacity(0.39)))));
                    },
                    itemCount: controller.notificationsModelObj.value
                        .notificationsItemList.value.length,
                    itemBuilder: (context, index) {
                      NotificationsItemModel model = controller
                          .notificationsModelObj
                          .value
                          .notificationsItemList
                          .value[index];
                      return NotificationsItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 18.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_activity".tr, margin: EdgeInsets.only(left: 133.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

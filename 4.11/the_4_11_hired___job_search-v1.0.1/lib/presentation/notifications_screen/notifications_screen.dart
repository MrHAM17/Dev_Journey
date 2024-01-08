import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_4_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 327.h,
                margin: EdgeInsets.fromLTRB(24.h, 30.v, 24.h, 5.v),
                padding: EdgeInsets.all(15.h),
                decoration: AppDecoration.outlineGray
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_messages_notifications".tr,
                          style: CustomTextStyles.labelLargeGray50002),
                      SizedBox(height: 19.v),
                      Expanded(
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 11.0.v),
                                    child: SizedBox(
                                        width: 295.h,
                                        child: Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: appTheme.gray300)));
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
                              })))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_notifications".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }
}

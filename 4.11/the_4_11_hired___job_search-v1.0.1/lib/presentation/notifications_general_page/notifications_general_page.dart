import '../notifications_general_page/widgets/notificationsgeneral_item_widget.dart';
import 'controller/notifications_general_controller.dart';
import 'models/notifications_general_model.dart';
import 'models/notificationsgeneral_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationsGeneralPage extends StatelessWidget {
  NotificationsGeneralPage({Key? key}) : super(key: key);

  NotificationsGeneralController controller =
      Get.put(NotificationsGeneralController(NotificationsGeneralModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildNotificationsGeneral()
                ]))));
  }

  /// Section Widget
  Widget _buildNotificationsGeneral() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.5.v),
                  child: SizedBox(
                      width: 323.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray300)));
            },
            itemCount: controller.notificationsGeneralModelObj.value
                .notificationsgeneralItemList.value.length,
            itemBuilder: (context, index) {
              NotificationsgeneralItemModel model = controller
                  .notificationsGeneralModelObj
                  .value
                  .notificationsgeneralItemList
                  .value[index];
              return NotificationsgeneralItemWidget(model);
            })));
  }
}

import '../notification_list_page/widgets/category_item_widget.dart';
import '../notification_list_page/widgets/list_item_widget.dart';
import '../notification_list_page/widgets/samuelella_item_widget.dart';
import 'controller/notification_list_controller.dart';
import 'models/category_item_model.dart';
import 'models/list_item_model.dart';
import 'models/notification_list_model.dart';
import 'models/samuelella_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';

class NotificationListPage extends StatelessWidget {
  NotificationListPage({Key? key})
      : super(
          key: key,
        );

  NotificationListController controller =
      Get.put(NotificationListController(NotificationListModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  decoration: AppDecoration.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 4.v),
                      _buildCategory(),
                      SizedBox(height: 35.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_today".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 14.v),
                            _buildList(),
                            SizedBox(height: 37.v),
                            Text(
                              "msg_older_notifications".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.v),
                            _buildSamuelElla(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory() {
    return SizedBox(
      height: 54.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller
              .notificationListModelObj.value.categoryItemList.value.length,
          itemBuilder: (context, index) {
            CategoryItemModel model = controller
                .notificationListModelObj.value.categoryItemList.value[index];
            return CategoryItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: controller
              .notificationListModelObj.value.listItemList.value.length,
          itemBuilder: (context, index) {
            ListItemModel model = controller
                .notificationListModelObj.value.listItemList.value[index];
            return ListItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSamuelElla() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: controller
              .notificationListModelObj.value.samuelellaItemList.value.length,
          itemBuilder: (context, index) {
            SamuelellaItemModel model = controller
                .notificationListModelObj.value.samuelellaItemList.value[index];
            return SamuelellaItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

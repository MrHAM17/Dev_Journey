import '../notification_screen/widgets/today_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/today_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.fromLTRB(16.h, 25.v, 16.h, 5.v),
                child: Obx(() => GroupedListView<TodayItemModel, String>(
                    shrinkWrap: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: controller
                        .notificationModelObj.value.todayItemList.value,
                    groupBy: (element) => element.groupBy!.value,
                    sort: false,
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                          padding: EdgeInsets.only(top: 25.v, bottom: 12.v),
                          child: Column(children: [
                            Text(value,
                                style: theme.textTheme.titleMedium!
                                    .copyWith(color: theme.colorScheme.primary))
                          ]));
                    },
                    itemBuilder: (context, model) {
                      return TodayItemWidget(model);
                    },
                    separator: SizedBox(height: 16.v))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_notifications".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}
